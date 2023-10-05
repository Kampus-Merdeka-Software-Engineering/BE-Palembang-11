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

app.use(express.static(path.join(__dirname, '../frontend')));

app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, '../frontend/index.html'));
});
 
app.listen(port, () => {
    console.log(`Example app listening on http://localhost:${port}`);
}); 