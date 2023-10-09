import express from "express";
import { 
    getQnA,
    getAllQnA,
    createTanya,
    createJawab
} from "../controller/tanyaController.js";

const router = express.Router();

router.get('/utama', getQnA);
router.get('/qna', getAllQnA);
router.post('/qna/add',createTanya);
router.post('/qna/jawaban',createJawab);

export default router;