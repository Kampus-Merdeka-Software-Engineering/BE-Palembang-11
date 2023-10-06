import express from "express";
import cors from "cors";
import router from "./routes/TanyaRoute.js";
import { fileURLToPath } from 'url';
import path from 'path';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const app = express();
const port = 3000;
 
app.use(cors());
app.use(express.json());
app.use(router);

app.use(express.static(path.join(__dirname, 'https://kampus-merdeka-software-engineering.github.io/front-end-capstone-project-section-palembang-group-11')));

app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'https://kampus-merdeka-software-engineering.github.io/front-end-capstone-project-section-palembang-group-11/page/pertanyaan.html'));
});
 
app.listen(port, () => {
    console.log(`app listening on http://localhost:${port}`);
}); 