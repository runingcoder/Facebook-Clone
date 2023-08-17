import "./register.css";
import { AuthContext } from "../../AuthContext";
import { useContext, useEffect } from "react";
import { useNavigate } from "react-router-dom";

export default function Register() {
  const navigate = useNavigate();

  const {
    user,
    registerData,
    setregisterData,
    alertData,
    setAlertDataFunc,
    RegisterFunction,
    OnClickGoToLogin,
  } = useContext(AuthContext);
  function handle(e) {
    const newData1 = { ...registerData };
    newData1[e.target.id] = e.target.value;
    setregisterData(newData1);
  }
  useEffect(() => {
    if (user) {
      navigate("/");
    }
    setAlertDataFunc("");

  }, []);
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
              RegisterFunction(e);
            }}
            className="loginBox"
          >
            <input
              onChange={(e) => handle(e)}
              placeholder="Username"
              className="loginInput"
              id="username"
              type="text"
              required
            />
            <input
              onChange={(e) => handle(e)}
              placeholder="Email"
              id="email"
              className="loginInput"
              required
              type="email"
            />
            <input
              onChange={(e) => handle(e)}
              placeholder="Password"
              className="loginInput"
              required
              id="password"
              type="password"
            />
            <input
              onChange={(e) => handle(e)}
              placeholder="Password Again"
              className="loginInput"
              required
              id="re_password"
              type="password"
            />
            <input
              onChange={(e) => handle(e)}
              placeholder="City"
              className="loginInput"
              id="city"
              type="text"
              required
            />
            <button className="loginButton">Sign Up</button>
            <span className="alertMessage">{alertData}</span>
          </form>
          <button onClick={OnClickGoToLogin} className="loginRegisterButton">
            Log into Account
          </button>
        </div>
      </div>
    </div>
  );
}
