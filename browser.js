// Check if your API allows tokens in the URL: wss://://qubuhub.com
const socket = new WebSocket('wss://://qubuhub.com');

// Connection opened
socket.addEventListener('open', (event) => {
  console.log('Connected to server');
  
  // Send data
  socket.send(JSON.stringify({ type: 'greet', text: 'Hello Server!' }));
});

// Listen for messages
socket.addEventListener('message', (event) => {
  console.log('Message from server ', event.data);
});

// Handle errors
socket.addEventListener('error', (event) => {
  console.error('WebSocket error observed:', event);
});

// Handle closure
socket.addEventListener('close', (event) => {
  console.log('Connection closed', event.reason);
});
