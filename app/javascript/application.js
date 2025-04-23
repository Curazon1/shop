import React from "react"
import ReactDOM from "react-dom/client"

const App = () => {
    return <h1>Hello from React 🎉</h1>
}

const root = document.getElementById("root")
if (root) {
    const reactRoot = ReactDOM.createRoot(root)
    reactRoot.render(<App />)
}
