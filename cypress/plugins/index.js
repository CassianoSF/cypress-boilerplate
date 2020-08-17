const imbac = require('imba/dist/compiler.js');
const fs = require('fs')

module.exports = (on) => {
    on('file:preprocessor', async (file) => {
        var options = {
            targetPath: file.outputPath.replace(/\.imba\d?$/,'.js')
        }
        var source = fs.readFileSync(file.filePath, { encoding: 'utf-8'})
        var compile = await imbac.compile(source, options)
        return file.outputPath + '.js'
    })
}