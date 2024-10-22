const { readdirSync } = require("node:fs")
const { basename } = require("node:path")

const directories = ["effect"]

const files = directories.flatMap(directory => readdirSync(directory).map(file => `${directory}/${basename(file, ".md")}`))

console.log(`<html>
  <head>
    <title>Effect AI docs</title>
  </head>
  <body>
    <ul>
      ${files.map(file => `<li><a href="${encodeURI(file)}">${basename(file)}</a></li>`).join("\n")}
    </ul>
  </body>
</html>`)
