const express = require('express')
global.pd = console.log.bind(console)
const app = express()
const PORT = process.env.PORT || 3000

app.get('/', (req, res) => {
  res.json({b: 2})
})

app.listen(PORT, () => {
  console.log(`> http://localhost:${PORT}`)
})
