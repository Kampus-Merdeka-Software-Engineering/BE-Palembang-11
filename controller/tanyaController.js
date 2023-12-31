import {Tanya, Jawaban} from "../models/TanyaModel.js";

export const createTanya = async(req,res) => {
    try {
        await Tanya.create(req.body);
        res.status(201).json({message: "Pertanyaan Ditambahkan"});
    } catch (error) {
        console.log(error.message);
    }
}

export const getAllQnA = async (req, res) => {
  try {
    const questions = await Tanya.findAll(); // Ambil semua pertanyaan
    const answers = await Jawaban.findAll(); // Ambil semua jawaban

    // Gabungkan data pertanyaan dan jawaban sesuai id pertanyaan
    const qnaData = questions.map((question) => {
      const relatedAnswers = answers.filter((answer) => answer.id_question === question.id_question);
      return {
        name: question.name,
        pertanyaan: question.pertanyaan,
        id_question: question.id_question,
        jawaban: relatedAnswers.map((answer) => {
          return{
            nama: answer.nama,
            jawaban: answer.jawaban,
          }
        }),
      };
    });
    res.status(200).json(qnaData);
  } catch (error) {
    console.log(error.message);
    res.status(500).json({ error: "Internal server error" });
  }
};

  export const getQnA = async (req,res) => {
    try {
        const questions = await Tanya.findAll({
            limit:3,
        });
        const answers = await Jawaban.findAll();

        const qnaData = questions.map((question) => {
            const relatedAnswers = answers.filter((answer) => answer.id_question === question.id_question);
            return {
              name: question.name,
              pertanyaan: question.pertanyaan,
              jawaban: relatedAnswers.map((answer) => {
                return{
                  nama: answer.nama,
                  jawaban: answer.jawaban,
                }
              }),
            };
          });
          res.status(200).json(qnaData);
    } catch (error) {
        console.log(error.message);
      res.status(500).json({ error: "Internal server error" });
    }
  };

  export const createJawab = async (req, res) => {
    if(req.body.id_question === undefined) return
    try {
      await Jawaban.create(req.body);
      res.status(201).json({message: "Jawaban Ditambahkan"});
  } catch (error) {
      console.log(error.message);
  }
};
