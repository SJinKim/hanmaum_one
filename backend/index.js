const express = require('express')
const cors = require('cors')
const bodyParser = require('body-parser')

require('dotenv').config
const port = process.env.NODE_ENV || 3000
const app = express()

app.use(bodyParser.json())

// health check endpoint
app.get('/health', (res, req) => {
  res.status(200).json({ status: 'UP' })
})

// health port
app.listen(port, () => {
  console.log(`App running on port ${port}`)
})
