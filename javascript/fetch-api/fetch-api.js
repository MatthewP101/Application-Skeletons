// sends a basic get request to an api
fetch("https://api.example.com/items")
    .then((response) => response.json())
    .then((data) => {
        console.log(data);
    })
    .catch((error) => {
        console.error("request failed:", error);
    });


// reusable async function for getting data from an api
async function getData(url) {
    try {
        const response = await fetch(url);

        // stops the function if the server returns an error response
        if (!response.ok) {
            throw new Error(`request failed: ${response.status}`);
        }

        return await response.json();

    } catch (error) {
        console.error(error);
        return null;
    }
}


// reusable async function for sending json data
async function postData(url, data) {
    try {
        const response = await fetch(url, {
            method: "POST",

            // tells the server that json data is being sent
            headers: {
                "Content-Type": "application/json"
            },

            // converts the javascript object into json
            body: JSON.stringify(data)
        });

        if (!response.ok) {
            throw new Error(`request failed: ${response.status}`);
        }

        return await response.json();

    } catch (error) {
        console.error(error);
        return null;
    }
}


// example usage
getData("https://api.example.com/items")
    .then((data) => {
        console.log(data);
    });