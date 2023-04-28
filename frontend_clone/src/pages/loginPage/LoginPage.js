import React from "react";
import "./loginPage.css";
import { useContext, useEffect } from "react";
import { Navigate } from "react-router-dom";

import { ResponseContext1 } from "../../App1";
const LoginPage = () => {
  const { authToken1, setAuthToken1 } = useContext(ResponseContext1);
  // console.log(authToken);
  return authToken1 ? (
    <Navigate to="/" />
  ) : (
    <div>
      <form className="loginBox">
        <input
          className="inputClass"
          type="text"
          name="username"
          placeholder="enter your username"
        />
        <input
          className="inputClass"
          type="password"
          name="password"
          placeholder="enter your pasword"
        />
        <button type="submit" className="loginButton">
          Log In
        </button>
      </form>
    </div>
  );
};

export default LoginPage;
