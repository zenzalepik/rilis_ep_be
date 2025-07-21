'use strict'
const { Model } = require('sequelize')
module.exports = (sequelize, DataTypes) => {
    class nama_printer extends Model {
        /**
         * Helper method for defining associations.
         * This method is not a part of Sequelize lifecycle.
         * The `models/index` file will call this method automatically.
         */
        static associate(models) {
            // define association here
        }
    }
    nama_printer.init(
        {
            nama_printer: DataTypes.STRING,
        },
        {
            sequelize,
            modelName: 'nama_printer',
        }
    )
    return nama_printer
}
