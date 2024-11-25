const db = require('../services/db')
const utils = require('./utilsController')

const getAllTitle = (req, res) => {
  console.log('get all titles')
  return utils.getAllValues('weeks', res)
}

module.exports = {
  getAllTitle,
}
