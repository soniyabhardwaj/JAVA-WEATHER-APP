# WeatherApp USING JAVA SERVLET JSP

## Description
WeatherApp is a simple Java web application developed using Servlets, JSP, HTML, CSS, and JavaScript. It integrates with the OpenWeatherMap API to fetch weather data for a given city and display it to the user.

## Features
Fetch weather data based on the user's input city name.
Display current weather conditions including temperature, humidity, wind speed, visibility, and cloud cover, etc.

## Technologies Used
- Java Servlets
- JavaServer Pages (JSP)
- HTML
- CSS
- JavaScript
- Gson library for JSON parsing
- OpenWeatherMap API


## API Integration in Servlet:
- Created a Java servlet (MyServlet.java) to handle HTTP requests.
- In the doPost method, fetched the city name from the form input.
- Constructed the API URL with the city name and your API key (apiUrl) to fetch weather data.

 ### HTTP Request to API:
   -  Used HttpURLConnection to establish a connection to the API endpoint.
   - Set the request method to GET and retrieved the API response using input streams.

 ### Processing API Response:
  - The API response was in JSON format.
  - Used the Gson library to parse the JSON response into a JsonObject.
  - Extracted relevant weather data like temperature, humidity, wind speed, visibility, weather condition, and cloud cover from the JSON response.
    
### Setting Request Attributes:

  - Stored the extracted weather data, city name, date, time, and other relevant information as request attributes using HttpServletRequest.setAttribute().

### Forwarding Request to JSP:

  - Forwarded the request to the JSP page (index.jsp) for rendering using RequestDispatcher.forward().

## Displaying Data in JSP:

  - In our JSP page (index.jsp), we used HTML and embedded Java code (EL expressions) to display the weather data.
  - Accessed the data from request attributes using ${attributeName} syntax.


