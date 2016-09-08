const express = require('express')
global.pd = console.log.bind(console)
const app = express()

app.get('/', (req, res) => {
  res.json({a: 1})
})

app.listen(process.env.PORT, () => {
  console.log(`> http://localhost:${process.env.PORT}`)
})
