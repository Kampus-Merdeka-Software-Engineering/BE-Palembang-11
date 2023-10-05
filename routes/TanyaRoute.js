import express from "express";
import { 
    getQnA,
    getJawab,
    getAllQnA,
    createTanya,
    createJawab
} from "../controller/tanyaController.js";

const TanyaRoute = express.Router();

TanyaRoute.get('/test', getJawab);
TanyaRoute.get('/utama', getQnA);
TanyaRoute.get('/qna', getAllQnA);
TanyaRoute.post('/qna/add',createTanya);
TanyaRoute.post('/qna/jawaban',createJawab);

export default router;