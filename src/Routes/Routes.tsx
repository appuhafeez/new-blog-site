import { createHashRouter } from "react-router-dom";
import HomePage from "../Home/HomePage";
import App from "../App";
import PostPage from "../Posts/PostPage";

export const router = createHashRouter([
    {
        path: "/",
        children : [
            {index: true,element : <App/>},
            {path: "home", element: <HomePage/>},
            {path: "post", element: <PostPage/>}
        ]
    }
])