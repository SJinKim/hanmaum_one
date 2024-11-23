const express = require('express')
const router = express.Router()

// controller List
const testController = require('../controllers/testController')

// test
router.get('/getThemeTitles', testController.getAllTitle)

module.exports = router
