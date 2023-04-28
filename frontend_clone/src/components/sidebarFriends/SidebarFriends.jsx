import "./sidebarFriends.css";

const SidebarFriends = ({ friend }) => {
  return (
    <>
      <li className="sidebarfriend">
        <img src={friend.profilePicture} alt="" className="sidebarFriendImg" />
        <span className="sidebarFriendName">{friend.username}</span>
      </li>
    </>
  );
};

export default SidebarFriends;
