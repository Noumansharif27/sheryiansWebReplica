const express = require("express");
const mongoose = require("mongoose");
const path = require("path");
const ejsMate = require("ejs-mate");

const app = express();
const port = 3000;

app.use(express.urlencoded({ extended: true }));
app.use(express.static(path.join(__dirname, "public")));
app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));

app.engine("ejs", ejsMate);

// Root Rought
app.get("/", (req, res) => {
  res.render("index.ejs");
});

app.get("/sheryians", (req, res) => {
  res.render("index.ejs");
});

// Server Started
app.listen(port, () => {
  console.log(`listing at port: ${port}`);
});
