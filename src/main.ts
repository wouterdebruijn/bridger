import express from "express"

const app = express();

app.get("/", (req, res) => {
    console.log(req.headers["user-agent"])
    res.send('Hello World! PROD');
})

app.listen(3000, () => {
    console.log("Running");
});