import "./rightbar.css";
import { GetAllUsers } from "../../api/getApi.tsx";
import { useState, useEffect, useContext } from "react";
import { AuthContext } from "../../AuthContext";
import Online from "./Online";
import ProfileOnline from "./ProfileOnline";

const Rightbar = ({ profile, messenger }) => {
  const [userList, setUserList] = useState([]);
  const { authToken, currentUser, setCurrentUser } = useContext(AuthContext);
  useEffect(() => {
    async function fetchUsers() {
      const answer = await GetAllUsers(authToken.access);
      if (answer.status === 200) {
        setUserList(answer.data);
      }
    }
    fetchUsers();
    // let usersListToSend = userList;
  }, []);
  const ProfileRightBar = () => {
    return (
      <>
        <h4 className="rightbarrTitle">User information</h4>
        <div className="rightbarInfo">
          <div className="rightbarInfoItem">
            <span className="rightbarInfoKey">City:</span>
            <span className="rightbarInfoValue">{currentUser.city}</span>
          </div>
          <div className="rightbarInfoItem">
            <span className="rightbarInfoKey">From:</span>
            <span className="rightbarInfoValue">{currentUser.placeFrom}</span>
          </div>
          <div className="rightbarInfoItem">
            <span className="rightbarInfoKey">Relationship:</span>
            <span className="rightbarInfoValue">
              {currentUser.relationship}
            </span>
          </div>
        </div>
        <h2 className="rightbarTitle">User friends</h2>
        <div className="rightbarFollowings">
          {userList.map((u) => (
            <ProfileOnline key={u.id} user={u} />
          ))}
        </div>
      </>
    );
  };

  const HomeRightBar = () => {
    return (
      <>
        <div className="birthdayContainer">
          {/* <img src="assets/ad.jpg" alt=""  className="rightBarTopAd"/> */}
          <span className="birthdayText">
            <b>Pratima Chhetri</b> and{" "}
            <b>4 other friends have birthday today </b>
          </span>
        </div>
        <img src="assets/adcover.jpg" alt="" className="rightBarAd" />
        <h4 className="rightBarTitle">Online Friends</h4>
        <ul className="rightBarFriendList">
          {userList.map((u) => (
            <Online key={u.id} user={u} />
          ))}
        </ul>
      </>
    );
  };
  const MessengerRightBar = () => {
    return (
      <>
        <h4 className="rightBarTitle">Online Friends</h4>
        <ul className="rightBarFriendList">
          {userList.map((u) => (
            <Online key={u.id} user={u} />
          ))}
        </ul>
      </>
    );
  };

  return (
    <div className="rightbar">
      <div className="rightbarWrapper">
        {profile ? (
          <ProfileRightBar />
        ) : messenger ? (
          <MessengerRightBar />
        ) : (
          <HomeRightBar />
        )}
      </div>
    </div>
  );
};

export default Rightbar;
