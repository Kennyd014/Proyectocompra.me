const Sequelize = require('sequelize')

//local
/*
let nombre_host = "localhost"
let nombre_bd = "appnode"
let admin_bd = "root"
let password_bd = ""
*/

//heroku
let nombre_host = "us-cdbr-east-04.cleardb.com"
let nombre_bd = "heroku_850f05e705009be"
let admin_bd = "bed42ed6083e92"
let password_bd = "c8357e3d"


const db = new Sequelize(nombre_bd, admin_bd, password_bd, {
    host: nombre_host,
    dialect: 'mysql',
    define: {

        timestamps: false,
    }
})

//verificamos la conexion
/*db.authenticate()
    //promise
    .then(() => {
        console.log('Conectados a la base de datos!')
    })
    .catch(err => {
        console.log('No estamos conectados :( ' + err)
    })*/




module.exports = db;