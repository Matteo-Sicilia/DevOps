const http = require('http');

// Create an HTTP server that responds with "Hello World"
const server = http.createServer((req, res) => {
    res.statusCode = 200; // Set status code to 200 (OK)
    res.setHeader('Content-Type', 'text/plain'); // Set content type header to plain text
    res.end('scripts\n'); // Send response body "Hello World"
});

// Define port number and start listening for requests
const PORT = process.env.PORT || 3000;
server.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}/`);
});