import "./rightbar.css";
import { Link } from "react-router-dom";

export default function Online({ user }) {
  const PF = process.env.REACT_APP_PUBLIC_FOLDER;

  return (
    <li className="rightBarFriend">
      <div className="rightBarProfileImgContatiner">
        <Link to={`/profile/${user?.username}`}>
          <img
            src={user?.profilePicture}
            alt=""
            className="rightBarProfileImg"
          />
        </Link>
        <span className="rightBarOnline"></span>
      </div>
      <span className="rightBarUsername">{user?.username}</span>
    </li>
  );
}
