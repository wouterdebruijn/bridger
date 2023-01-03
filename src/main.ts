import express from "express";

const app = express();

app.get("/", (req, res) => {
    console.log(req.headers["user-agent"]);
    res.send("Application deployment complete!");
});

app.listen(3000, () => {
    console.log("Running");
});