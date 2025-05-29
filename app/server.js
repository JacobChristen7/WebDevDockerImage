const express = require('express');
const app = express();
const PORT = 8080;

app.get('/', (req, res) => {
  res.send('<h1>This is a Docker Node.js app that also uses Express</h1>');
});

app.listen(PORT, () => {
  console.log(`Express server running at http://localhost:${PORT}/`);
});