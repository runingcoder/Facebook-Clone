import React, { useState, useEffect } from "react";
import HomePage from "./pages/homePage/HomePage";
import LoginPage from "./pages/loginPage/LoginPage";
import { BrowserRouter as Router, Routes, Route, Link } from "react-router-dom";
import Header from "./pages/Header";
import { createContext } from "react";
import PrivateRoutes from "./PrivateRoutes";

import "./app.css";
export const ResponseContext1 = createContext(null);
function App() {
  const [authToken1, setAuthToken1] = useState(true);
  return (
    <ResponseContext1.Provider
      value={{
        authToken1: authToken1,
        setAuthToken1: setAuthToken1,
      }}
    >
      <Router>
        <div className="container">
          <Header />
          <Routes>
            <Route element={<PrivateRoutes />}>
              <Route path="/" exact element={<HomePage />} />
            </Route>
            <Route path="/loginPage" element={<LoginPage />} />
          </Routes>
        </div>
      </Router>
    </ResponseContext1.Provider>
  );
}

export default App;
