import "./rightbar.css";
import { Link } from "react-router-dom";

export default function ProfileOnline({ user }) {
  const PF = process.env.REACT_APP_PUBLIC_FOLDER;

  return (
    <div className="rightbarFollowing">
      <Link to={`/profile/${user?.username}`}>
        {" "}
        <img
          src={user?.profilePicture}
          alt=""
          className="rightbarFollowingImg"
        />
      </Link>

      <span className="rightbarFollowingName">{user?.username}</span>
    </div>
  );
}
