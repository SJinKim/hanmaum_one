const express = require('express')
const cors = require('cors')
const bodyParser = require('body-parser')

const testRouter = require('./routes/routes')

require('dotenv').config
const port = process.env.NODE_ENV || 3000
const app = express()
const domain = 'https://your-frontend-domain.com/'

// Middleware used to parse JSON
app.use(bodyParser.json())
app.use(cors())

// cors as middleware
// app.use(
//   '/one',
//   cors({
//     origin: domain + 'one',
//     methods: ['GET', 'POST', 'PUT', 'PATCH'],
//     allowedHeaders: ['Content-Type', 'Authorization'],
//   })
// )
// app.use(
//   '/admin',
//   cors({
//     origin: domain + 'admin',
//     methods: ['GET', 'POST', 'PUT', 'PATCH', 'DELETE'],
//     allowedHeaders: ['Content-Type', 'Authorization'],
//   })
// )

// health check endpoint
app.get('/health', (res, req) => {
  res.status(200).json({ status: 'UP' })
})

app.use('/api/test', testRouter)

// health port
app.listen(port, () => {
  console.log(`App running on port ${port}`)
})
