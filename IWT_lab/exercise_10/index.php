<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Book List</title>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f5f5f5;
      margin: 0;
      padding: 0;
    }
  
    h1 {
      text-align: center;
      color: #333;
      margin: 20px 0;
    }
  
    #search-container {
      text-align: center;
      margin-bottom: 20px;
    }
  
    input[type="text"] {
      padding: 10px;
      font-size: 16px;
      width: 250px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
  
    #search {
      background-color: #007BFF;
      color: #fff;
      border: none;
      padding: 10px 20px;
      font-size: 16px;
      cursor: pointer;
      border-radius: 5px;
    }
  
    #search:hover {
      background-color: #0056b3;
    }
  
    .book-list {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-around;
      visibility: hidden;
      align-items: center;
      text-align: left;
    }
  
    .book-list ul {
      list-style: none;
      padding: 0;
    }
  
    .book-list li {
      margin: 10px;
      padding: 10px;
      background-color: #fff;
      border: 1px solid #ddd;
      border-radius: 5px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      display: flex;
      align-items: center;
    }

    .book-list img {
      max-width: 100px;
      max-height: 150px;
      margin-right: 20px;
      border-radius: 5px;
    }
  </style>
</head>
<body>
  <h1>Book Search</h1>
  <div id="search-container">
    <input type="text" id="search-box" placeholder="Enter a book name">
    <button id="search">Load Books</button>
  </div>
  <div class="book-list">
    <ul id="book-list"></ul>
  </div>
  <script>
    $(document).ready(function() {
      const apiKey = "AIzaSyB-EBsQq7SLxNwZTCx1pAkM9I54KkPG5Ec";
      const searchBox = $("#search-box");
      const bookList = $("#book-list");

      $("#search").click(function() {
        const query = searchBox.val();
        if (!query) return alert("Search term can't be empty!");
        $.get(`https://www.googleapis.com/books/v1/volumes?q=${query}&key=${apiKey}`)
          .done(data => {
            bookList.empty();
            if (data.items && data.items.length) {
              data.items.forEach(book => {
                const { title, authors, publisher, imageLinks } = book.volumeInfo;
                const author = authors ? authors.join(", ") : "Unknown Author";
                const pub = publisher ? publisher : "Unknown Publisher";
                const thumbnail = imageLinks ? imageLinks.thumbnail : "No Image";
                
                const bookItem = $("<li></li>").html(`
                  <img src="${thumbnail}" alt="${title} cover">
                  <div>
                    <p><strong>Title:</strong> ${title}</p>
                    <p><strong>Author:</strong> ${author}</p>
                    <p><strong>Publisher:</strong> ${pub}</p>
                  </div>
                `);

                bookList.append(bookItem);
              });
              $(".book-list").css("visibility", "visible");
            } else {
              alert("No books found for your search term.");
            }
          })
          .fail(() => alert("Error fetching book data from the API. Please try again."));
      });
    });
  </script>
</body>
</html>
