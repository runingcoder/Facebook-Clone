// summary for this whole thing..
// first , when the login page is loaded, we need to check if the user is already logged in,
// for that, we need to check if the token is in the local storage,
// for this, we use the useState user, and setUser, to get the decoded value of the token if it is there,
// so, if the value of user is not None, the page is redirected to home ('/')
// next, the return section of the component runs. the form contains two functions,. One handle , which updates the
// the state of the email and password typed in and sets the values of the inputs to the state (mainData, setData)
// we use this to implement axios.post inside the submit function which is called in the form,
// when the response is fetched, if the response.status is not 200, we set the response.data to alertData, and use it to
// alert the user about something wrong like, invalid password, or invalid email,
// if the status is 200, we set the token in the localstorage in the browser, and redirect the user to the home page ('/')
// and in the topbar component, we have a button of logout, when pressed which activate a function that will
// call the axios.delete (that deletes the access token from the browser cookie) and deletes the token from the localstorage
// and navigates to the login page.
// now time for refreshing token and stuff.

import "./login.css";

import { AuthContext } from "../../AuthContext";

import { useContext, useEffect } from "react";
import { useNavigate } from "react-router-dom";

export default function Login() {
  const navigate = useNavigate();

  const { loginUser, mainData, setData, user, alertData, OnClickGoToRegister } =
    useContext(AuthContext);

  function handle(e) {
    const newData = { ...mainData };
    newData[e.target.id] = e.target.value;
    setData(newData);
  }


  return (
    <div className="login">
      <div className="loginWrapper">
        <div className="loginLeft">
          <h3 className="loginLogo">Kakeru</h3>
          <span className="loginDesc">
            Connect with friends and the world around you on Kakeru.
          </span>
        </div>
        <div className="loginRight">
          <form
            onSubmit={(e) => {
              loginUser(e);
            }}
            className="loginBox"
          >
            <input
              required
              onChange={(e) => handle(e)}
              id="email"
              type="email"
              placeholder="Email"
              value={mainData.email}
              className="loginInput"
            />
            <input
              required
              onChange={(e) => handle(e)}
              id="password"
              type="password"
              placeholder="Password"
              value={mainData.password}
              className="loginInput"
            />
            <button type="submit" className="loginButton">
              Log In
            </button>

            <span className="alertMessage">
              {alertData && alertData.message}
            </span>
            <span className="loginForgot">Forgot Password?</span>

            <button
              onClick={OnClickGoToRegister}
              className="loginRegisterButton"
            >
              Create a New Account
            </button>
          </form>
        </div>
      </div>
    </div>
  );
}
