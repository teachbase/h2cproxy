const proxy = require('html2canvas-proxy');
const express = require('express');

const app = express();
const port = (process.env.PORT || 8080);

// Health check endpoint
app.get('/_ping', function (req, res) {
  res.send('OK\n');
});

app.use("/", proxy());

app.listen(port);
console.log("Server running on port", port);