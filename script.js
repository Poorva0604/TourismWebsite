// // Fetch data from the server
// const cityname=document.getElementById('city-select');
// const spaname=document.getElementById('spanele');
// console.log(cityname+"city");
// spaname.innerHTML=cityname.value;
// fetch('/data')
//   .then(response => response.json())
//   .then(data => {
//     const gallery = document.getElementById('image-gallery');
    
//     data.forEach(row => {
//       // Create a div for each image item
//       const imageItem = document.createElement('div');
//       imageItem.classList.add('image-item');

//       // Create and append image inside the div
//       if (row.placeimg) {
//         const img = document.createElement('img');
//         img.src = row.placeimg;
//         img.alt = `${row.placename} Image`;
//         img.style.maxWidth = '100%'; // Make sure image is responsive
//         imageItem.appendChild(img); // Add the image to the imageItem
//       }

//       // Add place name as a caption
//       const imageName = document.createElement('div');
//       imageName.classList.add('image-name');
//       imageName.textContent = row.placename;
//       imageItem.appendChild(imageName); // Append the name below the image

//       // Add a button below the image and place name
//       const addButton = document.createElement('button');
//       addButton.textContent = 'Add';
//       addButton.style.marginTop = '10px'; // Optional: add margin for spacing
//       addButton.classList.add('add-button'); // Add a class for styling if needed

//       // Default styles for the button
//       addButton.style.backgroundColor = 'green'; // Initial background color for 'Add'
//       addButton.style.color = 'white'; // Initial text color

//       imageItem.appendChild(addButton); // Append the button below the place name

//       // Toggle button text and color between "Add" and "Added!" on click
//       addButton.addEventListener('click', () => {
//         if (addButton.textContent === 'Add') {
//           addButton.textContent = 'Added!';
//           addButton.style.backgroundColor = 'gray'; // Change color to gray when added
//           addButton.style.color = 'white'; // Change text color to white
//         } else {
//           addButton.textContent = 'Add';
//           addButton.style.backgroundColor = 'green'; // Change back to green for 'Add'
//           addButton.style.color = 'white'; // Change text color back to white
//         }
//       });

//       // Append the image item to the gallery
//       gallery.appendChild(imageItem);
//     });
//   })
//   .catch(error => console.error('Error fetching data:', error));

//-------------------------------------------------------------------------
// Function to get query parameters from URL
function getQueryParam(name) {
    const params = new URLSearchParams(window.location.search);
    return params.get(name);
}

// Get the city name from the query parameter
const city = getQueryParam('city');
const spaname = document.getElementById('spanele');
const gallery = document.getElementById('image-gallery');

// Update the span with the city name
spaname.textContent = city;
console.log("fetch outside");
// Fetch data from the server for the selected city
fetch(`http://localhost:3000/data?city=${encodeURIComponent(city)}`)
  .then(response => response.json())
  .then(data => {
    console.log('fetch inside');
    data.forEach(row => {
      // Create a div for each image item
      const imageItem = document.createElement('div');
      imageItem.classList.add('image-item');

      // Create and append image inside the div
      if (row.placeimg) {
        const img = document.createElement('img');
        img.src = row.placeimg;
        img.alt = `${row.placename} Image`;
        img.style.maxWidth = '100%'; // Make sure image is responsive
        imageItem.appendChild(img); // Add the image to the imageItem
      }

      // Add place name as a caption
      const imageName = document.createElement('div');
      imageName.classList.add('image-name');
      imageName.textContent = row.placename;
      imageItem.appendChild(imageName); // Append the name below the image

      const imageDesc = document.createElement('div');
      imageDesc.classList.add('image-desc');
      imageDesc.textContent = row.placedesc;
      imageItem.appendChild(imageDesc);

      // Add a button below the image and place name
      const addButton = document.createElement('button');
      addButton.textContent = 'Add';
      addButton.style.marginTop = '10px'; // Optional: add margin for spacing
      addButton.classList.add('add-button'); // Add a class for styling if needed

      // Default styles for the button
      addButton.style.backgroundColor = 'green'; // Initial background color for 'Add'
      addButton.style.color = 'white'; // Initial text color

      imageItem.appendChild(addButton); // Append the button below the place name

      // Toggle button text and color between "Add" and "Added!" on click
      addButton.addEventListener('click', () => {
        if (addButton.textContent === 'Add') {
          addButton.textContent = 'Added!';
          addButton.style.backgroundColor = 'gray'; // Change color to gray when added
          addButton.style.color = 'white'; // Change text color to white
         
          // Send POST request to add data to database
         fetch('http://localhost:3000/add-data', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
          },
          body: JSON.stringify({
            placename: row.placename,
            placeloc: row.placeloc,      // Location fetched from DB
            budget: row.budget || 0,     // Budget (use 0 if undefined)
            hours: row.hours || 0        // Hours (use 0 if undefined)
          })
        })
        .then(response => response.json())
        .then(result => {
          console.log('Data added:', result);
        })
        .catch(error => {
          console.error('Error adding data:', error);
        });
      } 

    });

      // Append the image item to the gallery
      gallery.appendChild(imageItem);
    });
  })
  .catch(error => {
    console.error('Error fetching data:', error);
    alert('Failed to fetch data from the server.'); // Optional: user feedback
  });

  // display selected item
function fetchData() {
  console.log("Add  place outside");
  fetch('http://localhost:3000/added-places') // Update this URL based on your server setup
    .then(response => response.json())
    .then(data => {
      console.log("add place inside");
      const gallery = document.getElementById('addedplace');
      gallery.innerHTML = ''; // Clear existing content

      data.forEach(row => {
        const imageItem = document.createElement('div');
        imageItem.classList.add('image-item');

        // Add place name
        const imageName = document.createElement('div');
        imageName.classList.add('image-name');
        imageName.textContent = `Place: ${row.placename}`;
        imageItem.appendChild(imageName);

        // Add place budget
        const imageBudget = document.createElement('div');
        imageBudget.classList.add('image-budget');
        imageBudget.textContent = `Budget: ${row.budget}`;
        imageItem.appendChild(imageBudget);

        // Add description if available
       
        // Add a remove button
        const removeButton = document.createElement('button');
        removeButton.textContent = 'Remove';
        removeButton.style.marginTop = '10px';
        removeButton.classList.add('remove-button');
        removeButton.style.backgroundColor = 'red';
        removeButton.style.color = 'white';

        removeButton.addEventListener('click', () => {
          // Send POST request to remove data from the database
          fetch('/remove-data', {
            method: 'POST',
            headers: {
              'Content-Type': 'application/json',
            },
            body: JSON.stringify({ placeid: row.placeid }) // Make sure this matches the correct field name in your database
          })
            .then(response => response.json())
            .then(result => {
              console.log('Data removed:', result);
              fetchData(); // Refresh the list
            })
            .catch(error => {
              console.error('Error removing data:', error);
            });
        });

        imageItem.appendChild(removeButton);
        gallery.appendChild(imageItem);
      });
    })
    .catch(error => console.error('Error fetching data:', error));
}

// Initial fetch when the page loads
fetchData();