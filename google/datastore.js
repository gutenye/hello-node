const gcloud = require('google-cloud')
const datastore = gcloud.datastore()
global.pd = console.log.bind(console)

datastore.save({key: datastore.key(['Company', 'Googl']), data: {a: 1}}, (err) => {
  pd('save', err)
})

datastore.get(datastore.key(['Company', 'Google']), (err, entity) => {
  pd('get', err, entity)
})
