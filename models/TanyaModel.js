import { Sequelize,DataTypes } from "sequelize";
import db from "../config/database.js";


const Tanya = db.define('tanya', {
    id_question: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    name: {type: DataTypes.STRING},
    pertanyaan: {type: DataTypes.STRING},
}, {
    freezeTableName: true,
    timestamps:false
});

const Jawaban = db.define('jawaban', {
    id_jawaban: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    id_question: {
        type: DataTypes.INTEGER,
        references: {
            model: 'tanya', 
            key: 'id_question' 
        }
    },
    name: {type:DataTypes.STRING},
    jawaban: {type: DataTypes.STRING},
}, {
    freezeTableName: true,
    timestamps:false
});


export { Tanya, Jawaban };

(async()=>{
    await db.sync();
})();