// To check if the Irish Travel Visa is accepting visas.

const https = require('https');
const hostname = 'www.irishimmigration.ie';
const path = '/coming-to-visit-ireland/how-to-apply-for-a-short-stay-c-visit-tourist-visa/';
const keywordToSearch = 'Emergency/Priority' ;
const options = {
  hostname,
  port: 443,
  path,
  method: 'GET'
}

const req = https.request(options, res => {
  if(res.statusCode !== 200) return res.send('request failed')
  let page = '';
  
  res.on('data', d => page += d)
  res.on('end',() => console.log(page.includes(keywordToSearch)))
})

req.on('error', console.error)

req.end()
