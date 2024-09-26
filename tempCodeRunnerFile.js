const express = require('express');
const path = require('path');
const sqlite3 = require('sqlite3').verbose();
const cors = require('cors');
const bodyParser = require('body-parser'); // To parse JSON bodies

const app = express();
const port = 3000;

// CORS configuration
app.use(cors({
  origin: 'http://127.0.0.1:5500' // Replace with your frontend origin
}));

// Body parser middleware
app.use(bodyParser.json()); // For parsing application/json
app.use(bodyParser.urlencoded({ extended: true })); // For parsing application/x-www-form-urlencoded

// Connect to SQLite database
const db = new sqlite3.Database('./pla.db', (err) => {
  if (err) {
    console.error('Error opening database:', err.message);
  } else {
    console.log('Connected to the SQLite database.');
  }
});

// Serve static files from the 'public' directory
app.use(express.static(path.join(__dirname, '../public')));

app.get('/data', (req, res) => {
  const city = req.query.city; // Get the city from query parameters
  console.log('city: ', city);
  
  if (city) {
    const sql = `
      SELECT placename, placedesc, placeimg
      FROM place p
      JOIN city_place cp ON p.placeid = cp.placeid
      JOIN city c ON c.cityid = cp.cityid
      WHERE c.cityname = ?
    `;
    
    db.all(sql, [city], (err, rows) => {
      if (err) {
        console.error('Database query error:', err.message);
        return res.status(500).json({ error: err.message });
      }
      res.json(rows); // Send data as JSON
    });
  } else {
    res.status(400).json({ error: 'City parameter is missing' });
  }
});

// New route to handle adding data to add_data table
app.post('/add-data', (req, res) => {
  const { placename, placeloc, budget, hours } = req.body;
  
  if (!placename || !placeloc || !budget || !hours) {
    return res.status(400).json({ error: 'Missing required fields' });
  }
  
  const sql = 'INSERT INTO added (placename, placeloc, budget, hours) VALUES (?, ?, ?, ?)';
  
  db.run(sql, [placename, placeloc, budget, hours], function(err) {
    if (err) {
      console.error('Database insert error:', err.message);
      return res.status(500).json({ error: err.message });
    }
    res.json({ id: this.lastID, message: 'Data added successfully!' });
  });
});

app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, '../public/index2.html'));
});

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
