const { Sequelize } = require("sequelize");
require("dotenv").config();

const sequelize = new Sequelize(
  process.env.DB_NAME,
  process.env.DB_USER,
  process.env.DB_PASSWORD,
  {
    host: process.env.DB_HOST,
    dialect: "mysql",
    port: process.env.DB_PORT,
    define: {
      timestamps: false,  // <-- désactive les createdAt, updatedAt par défaut pour tous les modèles
    },
  }
);

module.exports = sequelize;