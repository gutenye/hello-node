const express = require('express')
global.pd = console.log.bind(console)
const app = express()
const PORT = process.env.PORT || 80

app.get('/', (req, res) => {
  res.json({a: 'wercker'})
})

process.on('SIGTERM', () => { pd('SIGTERM'); process.exit() })
process.on('SIGINT', () => { pd('SIGINT'); process.exit() })

app.listen(PORT, () => {
  console.log(`> http://localhost:${PORT}`)
})
