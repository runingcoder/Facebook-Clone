import "./profile.css";
import Feed from "../../components/feed/Feed";
import Sidebar from "../../components/sidebar/Sidebar";
import Rightbar from "../../components/rightbar/Rightbar";
import TopBar from "../../components/topbar/TopBar";
import { GetUserByName } from "../../api/getApi.tsx";
import { useEffect, useState, useContext } from "react";
import { AuthContext } from "../../AuthContext";
import { useParams } from "react-router-dom";

const Profile = () => {
  const username = useParams().username;
  const { authToken, currentUser, setCurrentUser } = useContext(AuthContext);

  const [myPosts, setMyPosts] = useState(null);
  useEffect(() => {
    async function fetchUserPosts() {
      const answer = await GetUserByName(username, authToken.access);
      if (answer.status === 200) {
        setCurrentUser(answer.data);
      }
    }

    fetchUserPosts();
  }, []);
  return (
    <>
      <TopBar />

      <div className="profile">
        <Sidebar />
        <div className="profileRight">
          <div className="profileRightTop">
            <div className="profileImgSection">
              <img
                src={currentUser?.coverPicture}
                className="coverPic"
                alt=""
              />
              <img
                src={currentUser?.profilePicture}
                alt=""
                className="profileDisplay"
              />
            </div>
            <div className="profileInfo">
              <span className="userName">{currentUser?.username}</span>
              <span className="bio">{currentUser?.bio}</span>
            </div>
            <div className="profileRightBottom">
              <Feed username={username} />
              <Rightbar profile />
            </div>
          </div>
        </div>
      </div>
    </>
  );
};

export default Profile;
