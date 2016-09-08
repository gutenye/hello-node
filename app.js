const express = require('express')
global.pd = console.log.bind(console)
const app = express()

app.get('/', (req, res) => {
  res.json({a: 1})
})

app.listen(3003, () => {
  console.log('> http://localhost:3003')
})


