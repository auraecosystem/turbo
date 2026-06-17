const WebSocket = require('ws');

// Replace with your token if authentication is required
const token = 'YOUR_ACCESS_TOKEN'; 

const ws = new WebSocket('wss://://qubuhub.com', {
  headers: {
    'Authorization': `Bearer ${token}`
  }
});

// Connection opened
ws.on('open', () => {
  console.log('Connected to Qubuhub WebSocket!');
  
  // Example: Send a message to the server
  const message = JSON.stringify({ event: 'subscribe', channel: 'updates' });
  ws.send(message);
});

// Listen for messages from the server
ws.on('message', (data) => {
  console.log('Message from server:', data.toString());
});

// Handle errors
ws.on('error', (error) => {
  console.error('WebSocket error:', error.message);
});

// Handle connection closure
ws.on('close', (code, reason) => {
  console.log(`Connection closed. Code: ${code}, Reason: ${reason}`);
});

