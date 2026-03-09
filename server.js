const express = require("express");
const path = require("path");

const app = express();
const PORT = 3000;

// ===== LOGGER =====
// minden kérés megjelenik a szerver konzoljában
app.use((req, res, next) => {

    const time = new Date().toLocaleString();
    console.log(`[${time}] ${req.method} ${req.url}`);

    next();

});

// ===== STATIC FILES =====
// itt add meg azt a mappát ahol a HTML fájlok vannak
// pl: frontend, web, pages stb.

app.use(express.static(path.join(__dirname, "FRONTEND")));


// ===== START PAGE =====

app.get("/", (req, res) => {

    res.sendFile(path.join(__dirname, "FRONTEND", "register_signIn.html"));

});


// ===== 404 HANDLER =====

app.use((req, res) => {

    res.status(404).send("404 - Az oldal nem található");

});


// ===== SERVER START =====

app.listen(PORT, () => {

    console.log("=================================");
    console.log("EduShare server elindult 🚀");
    console.log(`http://localhost:${PORT}`);
    console.log("=================================");

});