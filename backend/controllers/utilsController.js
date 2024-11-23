const db = require('../services/db')

const executeQuery = (query, values, res, successStatus, successMessage) => {
  db.query(query, values, (err, result) => {
    if (err) {
      console.error('Error: ' + err.stack)
      return res.status(500).json({
        error: 'An error occurred while executing the query',
      })
    }
    if (result.affectedRows === 0 && successStatus !== 200) {
      return res.status(404).json({
        error: 'Error: Resource not found',
      })
    }
    return res.status(successStatus).json(successMessage ? { message: successMessage } : result)
  })
}

const getAllValues = (tableName, res) => {
  const query = `SELECT * FROM ${tableName}`
  executeQuery(query, [], res, 200)
}

const getSingleValue = (tableName, conditions, res) => {
  const query = `SELECT * FROM ${tableName} WHERE ${conditions
    .map((cond) => `${cond.column} = ?`)
    .join(' AND ')}`
  const values = conditions.map((cond) => cond.value)
  executeQuery(query, values, res, 200)
}

const createValue = (tableName, data, res) => {
  const query = `INSERT INTO ${tableName} (${Object.keys(data).join(', ')}) VALUES (${Object.keys(data)
    .map(() => '?')
    .join(', ')})`
  const values = Object.values(data)
  executeQuery(query, values, res, 201, 'Entry created successfully')
}

const updateValue = (tableName, data, conditions, res) => {
  const query = `UPDATE ${tableName} SET ${Object.keys(data)
    .map((key) => `${key} = ?`)
    .join(', ')} WHERE ${conditions.map((cond) => `${cond.column} = ?`).join(' AND ')}`
  const values = [...Object.values(data), ...conditions.map((cond) => cond.value)]
  executeQuery(query, values, res, 200, 'Resource updated successfully')
}

const removeValue = (tableName, conditions, res) => {
  const query = `DELETE FROM ${tableName} WHERE ${conditions
    .map((cond) => `${cond.column} = ?`)
    .join(' AND ')}`
  const values = conditions.map((cond) => cond.value)
  executeQuery(query, values, res, 200, 'Resource deleted successfully')
}

module.exports = {
  getAllValues,
  getSingleValue,
  createValue,
  updateValue,
  removeValue,
}
