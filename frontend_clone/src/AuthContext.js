import React from "react";
import { GetFriends, GetOneUser } from "./api/getApi.tsx";
import Axios from "./config/Axios.ts";
import jwt_decode from "jwt-decode";
import { createContext, useState, useEffect } from "react";
import { SignIn, RefreshApi, Register } from "./api/postApi.tsx";
// import { GetPosts } from "./api/getApi.tsx";
import { useNavigate } from "react-router-dom";
export const AuthContext = createContext(null);

const AuthProvider = ({ children }) => {
  const navigate = useNavigate();
  const [friends, setFriends] = useState([]);
  const [mainUser, setMainUser] = useState(null);

  const [currentUser, setCurrentUser] = useState([]);
  const [alertData, setAlertData] = useState([]);
  const [alertDataLogin, setAlertDataLogin] = useState([]);

  const [usersList, setUsersList] = useState(null);
  const [mainData, setData] = useState({
    email: "",
    password: "",
  });
  const [registerData, setregisterData] = useState({
    username: "",
    email: "",
    password: "",
    re_password: "",
    city: "",
  });
  const [loading, setLoading] = useState(true);
  // loading true is a state when the authToken is not loaded
  // we use this so that updateToken is called before any page loads to make sure that the access token
  // is not expired and the user is not directed to login page.

  const [authToken, setAuthToken] = useState(() =>
    localStorage.getItem("token")
      ? JSON.parse(localStorage.getItem("token"))
      : null
  );

  const [user, setUser] = useState(() =>
    localStorage.getItem("token")
      ? jwt_decode(localStorage.getItem("token"))
      : null
  );

  async function loginUser(e) {
    e.preventDefault();
    const response = await SignIn(mainData.email, mainData.password);
    if (response.status === 200) {
      setAuthToken(response.data.data);
      localStorage.setItem("token", JSON.stringify(response.data.data));
      setUser(jwt_decode(response.data.data.access));
      navigate("/");
    } else {
      setAlertDataLogin(response.data);
    }
  }
  function setAlertDataLoginFunc(data) {
    setAlertDataLogin(data);
  }
  function setAlertDataFunc(data) {
    setAlertData(data);
  }
  async function RegisterFunction(e) {
    e.preventDefault();
    const response = await Register(
      registerData.username,
      registerData.email,
      registerData.password,
      registerData.re_password,
      registerData.city
    )
      .then(() => {
        navigate("/login");
      })
      .catch((response) => {
        let dataToManipulate = response.response.data;
        let data1 = Object.values(dataToManipulate)[0];
        // got the first value of the object
        // tell me if there is a better way to do this, Rea DIDI!!
        let data2 = JSON.stringify(data1);
        let data3 = data2.substring(2);
        let data4 = data3.slice(0, -2);
        // converted the data to a string and removed the first and last characters
        setAlertData(data4);
      });
  }
  function OnClickGoToLogin() {
    navigate("/login");
  }
  function OnClickGoToRegister() {
    navigate("/register");
  }
  function onClickGoToTimeline() {
    navigate("/")
  }
  function OnClickGoToMessenger() {
    navigate("/messenger");
  }
  function LogOutFunction() {
    // Axios.delete("/login").then(() => {
    setUser(null);
    setAuthToken(null);
    localStorage.removeItem("token");
    navigate("/login");
  }
  // )}
  let updateToken = async () => {
    if (loading) {
      setLoading(false);
    }

    const response = await RefreshApi(authToken?.refresh).catch(() => {
      LogOutFunction();
    });
    if (response?.status == 200) {
      setAuthToken(response.data);
      localStorage.setItem("token", JSON.stringify(response.data));
      setUser(jwt_decode(response.data.access));
    }
  };

  useEffect(() => {
    if (loading) {
      updateToken();
    }
    // so, when the page is loaded for the first time or anytime that it is reloaded, updateToken is run and the
    // access token is updated so that every api runs smoothly.
    // because if we open our page after a very long time, the server has not been running as long as we are not
    // in the page, so, access token is expired. so, we need to refresh the access token in every reload.

    let lessThanADay = 1000 * 60 * 60 * 23;
    let lessThanFiveMinutes = 1000 * 60 * 4;
    // let lessThanAMinute = 1000 * 60 * 0.8;
    let interval = setInterval(() => {
      if (authToken) {
        updateToken();
      }
    }, lessThanADay);
    // updates the acess token every 4 minutes as its expiry time is actually 5 minutes.
    // but need to figure out a way to set that into cookie as access token so that it will be useful in the
    // first place.
    // gave that up and follwoing the whoel JWT token thing as shown in video (by abandoning the code for cookies)
    return () => clearInterval(interval);
    // yesko reason pachi herumla.
  }, [authToken]);
  async function getFriends() {
    const answer = await GetFriends(user.user_id, authToken.access);
    if (answer.status === 200) {
      setFriends(answer.data);
    }
  }
  async function getMainUser() {
    const userMan = await GetOneUser(authToken.access, user.user_id);
    if (userMan.status === 200) {
      setMainUser(userMan.data);
      // console.log(mainUser)

    }
  }
  let contextData = {
    onClickGoToTimeline: onClickGoToTimeline,
    getMainUser: getMainUser,
    mainUser: mainUser,
    setMainUser: setMainUser,
    setAlertDataFunc: setAlertDataFunc,
    friends: friends,
    setFriends: setFriends,
    getFriends: getFriends,
    OnClickGoToMessenger: OnClickGoToMessenger,
    OnClickGoToLogin: OnClickGoToLogin,
    RegisterFunction: RegisterFunction,
    registerData: registerData,
    setregisterData: setregisterData,
    OnClickGoToRegister: OnClickGoToRegister,
    authToken: authToken,
    currentUser: currentUser,
    setCurrentUser: setCurrentUser,
    name: "Kakeru",
    setUsersList: setUsersList,
    usersList: usersList,
    loginUser: loginUser,
    alertData: alertData,
    alertDataLogin: alertDataLogin,
    setAlertDataLoginFunc: setAlertDataLoginFunc,
    user: user,
    setUser: setUser,
    mainData: mainData,
    setData: setData,
    LogOutFunction: LogOutFunction,
  };

  return (
    <AuthContext.Provider value={contextData}>
      {loading ? null : children}
    </AuthContext.Provider>
  );
};;

export default AuthProvider;
