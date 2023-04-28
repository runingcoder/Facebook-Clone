import "./topbar.css";
import PersonIcon from "@mui/icons-material/Person";
import SearchIcon from "@mui/icons-material/Search";
import ChatIcon from "@mui/icons-material/Chat";
import { useNavigate } from "react-router-dom";
import { AuthContext } from "../../AuthContext";
import { useContext, useEffect } from "react";

import CircleNotificationsIcon from "@mui/icons-material/CircleNotifications";
import { Link } from "react-router-dom";
const TopBar = () => {
  const { user, setUser, LogOutFunction,mainUser,onClickGoToTimeline, getMainUser, OnClickGoToMessenger } =
    useContext(AuthContext);
  const navigate = useNavigate();
  useEffect(() => {
    getMainUser();
  }, [user]);

  return (
    <div className="topbarContainer">
      <div className="topbarLeft">
        <Link to="/">
          <span className="logo">Kakeru</span>
        </Link>
      </div>
      <div className="topbarCenter">
        <div className="searchbar">
          <SearchIcon className="searchIcon" />
          <input
            placeholder="Search for friend, post or video"
            className="searchInput"
          />
        </div>
      </div>
      <div className="topbarRight">
        <div className="topbarLinks">
          <span className="topbarLink">Homepage</span>

          <span
              onClick={onClickGoToTimeline}
              className="topbarLink"
            >
             Timeline
            </span>
        </div>
        <div className="topbarIcons">
          <div className="topbarIconItem">
            <PersonIcon />
            <span className="topbarIconBadge">1</span>
          </div>
          <div className="topbarIconItem" onClick={OnClickGoToMessenger}>
            <ChatIcon />
            <span className="topbarIconBadge">2</span>
          </div>
          <div className="topbarIconItem">
            <CircleNotificationsIcon />
            <span className="topbarIconBadge">1</span>
          </div>
        </div>
        <Link to={`/profile/${mainUser?.username}`}>
        <img src={mainUser?.profilePicture} alt="" className="topbarImg" />
        </Link>
        {user && <button onClick={LogOutFunction}>Logout</button>}
      </div>
    </div>
  );
};
export default TopBar