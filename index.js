const express = require("express");
const dotenv = require("dotenv");
dotenv.config();

const app = express();

const PORT = process.env.PORT || 5001;

app.get("/", (req, res) => {
  res.send("<h2>Hello World, From Sitaram Rathi !</h2>");
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
