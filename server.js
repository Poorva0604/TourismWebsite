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
app.use(express.json());
// Connect to SQLite database
const db = new sqlite3.Database('./Places.db', (err) => {
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
      select placename,placedesc,placeimg
      FROM place p,city c,city_place cp
      where p.placeid=cp.placeid AND c.cityid=cp.cityid AND c.cityname= ?
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
  console.log("add sever inside");
  const { placename, placeloc, budget, hours } = req.body;
  
  if (!placename || !placeloc || !budget || !hours) {
    return res.status(400).json({ error: 'Missing required fields' });
  }
  
  const sql = 'INSERT INTO added (placename, placeloc, budget, hours) VALUES (?, ?, ?, ?)';
  console.log("during adding places");
  db.run(sql, [placename, placeloc, budget, hours], function(err) {
    if (err) {
      console.error('Database insert error:', err.message);
      return res.status(500).json({ error: err.message });
    }
    res.json({ id: this.lastID, message: 'Data added successfully!' });
  });
  console.log("after adding");
});

app.get('/', (req, res) => {
  res.sendFile(__dirname, '../public/index2.html');
});

// Endpoint to fetch added places
app.get('/added-places', (req, res) => {
  db.all('SELECT * FROM added', (err, rows) => {
      if (err) {
          console.error('Error fetching added places:', err.message);
          res.status(500).json({ error: err.message });
          return;
      }
      res.json(rows);
  });
});

// Endpoint to remove a place
app.post('/remove-data', (req, res) => {
  const { placeid } = req.body;
  db.run('DELETE FROM added WHERE placeid = ?', [placeid], function (err) {
      if (err) {
          console.error('Error removing place:', err.message);
          res.status(500).json({ error: err.message });
          return;
      }
      res.json({ changes: this.changes });
  });
});

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});

//-------------------------------------------------------------------------------------this was running
// const express = require('express');
// const path = require('path');
// const sqlite3 = require('sqlite3').verbose();
// const cors = require('cors');
// const app = express();
// const port = 3000;
// app.use(cors());
// // Connect to SQLite database
// const db = new sqlite3.Database('./pla.db');
// app.use(cors({
//   origin: 'http://127.0.0.1:5500' // Replace with your frontend origin
// }));
// app.use(express.static(path.join(__dirname, '../public'))); // Serve static files from the 'public' directory

// app.get('/data', (req, res) => {
//   const city = req.query.city; // Get the city from query parameters
//   console.log('city: ',city);
//   if (city) {
//     db.all('SELECT placename, placedesc, placeimg FROM place p, city c, city_place cp WHERE c.cityid=cp.cityid AND cp.placeid=p.placeid AND c.cityname = ?', [city], (err, rows) => {
//       if (err) {
//         res.status(500).json({ error: err.message });
//       } else {
//         res.json(rows); // Send data as JSON
//       }
//     });
//   } else {
//     res.status(400).json({ error: 'City parameter is missing' });
//   }
// });
// // New route to handle adding data to add_data table
// app.post('/add-data', (req, res) => {
//   const { placename, placeloc, budget, hours } = req.body;
  
//   // Insert data into the 'added' table
//   const sql = 'INSERT INTO added (placename, placeloc, budget, hours) VALUES (?, ?, ?, ?)';
//   db.run(sql, [placename, placeloc, budget, hours], function(err) {
//     if (err) {
//       return res.status(500).json({ error: err.message });
//     }
//     res.json({ id: this.lastID, message: 'Data added successfully!' });
//   });
// });

// app.get('/', (req, res) => {
//   res.sendFile(__dirname + '/public/index2.html');
// });

// app.listen(port, () => {
//   console.log(`Server is running on http://localhost:${port}`);
// });

// ---------------------------------------------------------------
// const express = require('express');
// const sqlite3 = require('sqlite3').verbose();
// const app = express();
// const port = 3000;

// // Connect to SQLite database
// const db = new sqlite3.Database('./Places.db');

// app.use(express.static('public')); // Serve static files from the 'public' directory
// // const CityName=document.getElementById("city-select");
// // Route to get data from database and render it
// app.get('/data', (req, res) => {
//   // const city=CityName.value;
//   // console.log(city);
//   db.all('SELECT placename,placedesc,placeimg FROM place p, city c,city_place cp WHERE c.cityid=cp.cityid AND cp.placeid=p.placeid AND c.cityname =  ?', ['Belagavi'], (err, rows) => {
//     if (err) {
//       throw err;
//     }
//     res.json(rows); // Send data as JSON
//   });
// });

// // Route to serve HTML file
// app.get('/', (req, res) => {
//   res.sendFile(__dirname + '/public/index2.html');
// });

// app.listen(port, () => {
//   console.log(`Server running at http://localhost:${port}/`);
// });
//---------------------------------------------------------
// const express = require('express');
// const sqlite3 = require('sqlite3').verbose();
// const app = express();
// const port = 3000;

// // Connect to SQLite database
// const db = new sqlite3.Database('./Places.db');

// app.use(express.static('public')); // Serve static files from the 'public' directory
// app.use(express.json());
// // const CityName=document.getElementById("city-select");
// // Route to get data from database and render it
// app.get('/data', (req, res) => {
//   const city = req.query.city;
//   if(city){
//   db.all('SELECT placename,placedesc,placeimg FROM place p, city c,city_place cp WHERE c.cityid=cp.cityid AND cp.placeid=p.placeid AND c.cityname =  ?', [city], (err, rows) => {
//     if (err) {
//       // throw err;
//       res.status(500).json({ error: err.message });
//           return;
//     }
//     res.json(rows); // Send data as JSON
//   });}
//   else {
//     res.status(400).json({ error: 'City parameter is missing' });
//   }
// });

// // Route to serve HTML file
// app.get('/', (req, res) => {
//   res.sendFile(__dirname + '/public/index2.html');
// });

// app.listen(port, () => {
//   console.log(`Server running at http://localhost:${port}/`);
// });
//--------------------------------------------------------------------------------------------------
// Diplay image
// const express = require('express');
// const sqlite3 = require('sqlite3').verbose();
// const app = express();
// const port = 3000;

// // Connect to SQLite database
// const db = new sqlite3.Database('./Places.db');

// app.use(express.static('public')); // Serve static files from the 'public' directory

// // Route to get data from database and render it
// app.get('/data', (req, res) => {
//   db.all('SELECT placeimg FROM place', [], (err, rows) => {
//     if (err) {
//       throw err;
//     }
//     res.json(rows); // Send data as JSON
//   });
// });

// // Route to serve HTML file
// app.get('/', (req, res) => {
//   res.sendFile(__dirname + '/public/index.html');
// });

// app.listen(port, () => {
//   console.log(`Server running at http://localhost:${port}/`);
// });
// const express = require('express');
// const sqlite3 = require('sqlite3').verbose();
// const app = express();
// const port = 3000;

// // Connect to SQLite database
// const db = new sqlite3.Database('./Places.db');

// app.use(express.static('public')); // Serve static files from the 'public' directory
// app.use(express.json());

// // Route to get data from database based on city
// app.get('/data', (req, res) => {
//   // const city = req.query.city;
//   const city='Belagavi';
//   console.log(city);
//   if (city) {
//     console.log(city);
//     db.all(
//       'SELECT placename, placedesc, placeimg FROM place p JOIN city_place cp ON p.placeid = cp.placeid JOIN city c ON c.cityid = cp.cityid WHERE c.cityname = ?',
//       [city],
//       (err, rows) => {
//         if (err) {
//           res.status(500).json({ error: err.message });
//           return;
//         }
//         res.json(rows); // Send data as JSON
//       }
//     );
//   } else {
//     res.status(400).json({ error: 'City parameter is missing' });
//   }
// });

// // Route to serve HTML file
// app.get('/', (req, res) => {
//   res.sendFile(__dirname + '/public/index2.html');
// });

// app.listen(port, () => {
//   console.log(`Server running at http://localhost:${port}/`);
// });
