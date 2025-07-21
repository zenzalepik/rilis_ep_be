'use strict'
const { Model } = require('sequelize')
module.exports = (sequelize, DataTypes) => {
    class produk_member extends Model {
        /**
         * Helper method for defining associations.
         * This method is not a part of Sequelize lifecycle.
         * The `models/index` file will call this method automatically.
         */
        static associate(models) {
            // define association here
            produk_member.belongsTo(models.user, {
                foreignKey: 'user_id',
                as: 'user',
            })

            produk_member.hasOne(models.data_member, {
                foreignKey: 'produk_id',
                as: 'data_member',
            })
        }
    }
    produk_member.init(
        {
            nama: DataTypes.STRING,
            periode: DataTypes.RANGE(DataTypes.DATEONLY),
            list_id_kendaraan: DataTypes.ARRAY(DataTypes.STRING),
            max_kendaraan: DataTypes.INTEGER,
            tarif: {
                type: DataTypes.INTEGER,
                allowNull: false,
                validate: { min: 0 },
            },
            biaya_kartu: {
                type: DataTypes.INTEGER,
                allowNull: false,
                validate: { min: 0 },
            },
            biaya_ganti_nopol: {
                type: DataTypes.INTEGER,
                allowNull: false,
                validate: { min: 0 },
            },
            status: DataTypes.BOOLEAN,
            user_id: DataTypes.INTEGER,
        },
        {
            sequelize,
            modelName: 'produk_member',
        }
    )
    return produk_member
}
