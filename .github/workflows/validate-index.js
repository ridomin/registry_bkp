const fs = require('fs')

const main = () => {
  const index = JSON.parse(fs.readFileSync('model-index.json', 'utf-8'))
  Object.keys(index).forEach( id => {
    const path = index[id].path
    if (Array.isArray(path)) {
      path.forEach(p => {
        if (!fs.existsSync(p)) {
          console.error(`ERROR: dtmi ${id} not found in ${p}`) 
          process.exit(-1)
        }    
      })
    } else {
      if (!fs.existsSync(path)) {
        console.error(`ERROR: dtmi ${id} not found in ${path}`) 
        process.exit(-1)
      }
    }

    const deps = index[id].depends || []
    
    deps.forEach(d => {
      if (!index[d]) {
        console.error(`ERROR: dtmi ${id} depends on ${d} but was not found in index`)
        process.exit(-1)
      }
    })
  })
  console.log('Model Index validated successfully.')
}
main()