const express = require('express')
var app = express()

// Set a static folder
app.use(express.static('html5-export'))

var PORT = process.env.PORT || 8000
var server = app.listen(PORT, () => {
    console.log("Server started listening on port " + PORT)
})