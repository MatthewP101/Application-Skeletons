// async allows a function to work with asynchronous operations
async function getMessage() {
    return "hello";
}


// await pauses inside an async function until a promise finishes
async function loadData() {
    const result = await getMessage();

    console.log(result);
}


// try and catch handles errors from awaited operations
async function runTask() {
    try {
        const result = await getMessage();

        console.log(result);
    } catch (error) {
        console.error("task failed:", error);
    }
}


// runs multiple asynchronous tasks at the same time
async function loadMultipleTasks() {
    const [firstResult, secondResult] = await Promise.all([
        getMessage(),
        getMessage()
    ]);

    console.log(firstResult);
    console.log(secondResult);
}


// waits for one task before starting the next
async function runInOrder() {
    const firstResult = await getMessage();

    const secondResult = await getMessage();

    console.log(firstResult, secondResult);
}


// starts the asynchronous function
loadData();