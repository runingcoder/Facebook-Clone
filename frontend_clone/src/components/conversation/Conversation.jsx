import "./conversation.css";
import { AuthContext } from "../../AuthContext";
import { GetOneUser } from "../../api/getApi.tsx";
import { useState, useEffect, useContext } from "react";

const Conversation = ({ conversation, currentUser }) => {
  const [friendUser, setFriendUser] = useState(null);
  const PF = process.env.REACT_APP_PUBLIC_FOLDER;
  const { user, authToken } = useContext(AuthContext);
  useEffect(() => {
    const friendId =
      conversation.sender === user.user_id
        ? conversation.receiver
        : conversation.sender;
    async function fetchUser() {
      const answer = await GetOneUser(authToken.access, friendId);
      if (answer.status === 200) {
        setFriendUser(answer.data);
      }
    }
    fetchUser();
    // console.log(conversation);
  }, [user.user_id]);

  return (
    <>
      {" "}
      <li className="sidebarfriend">
        <img
          src={friendUser?.profilePicture}
          alt=""
          className="sidebarFriendImg"
        />
        <span className="sidebarFriendName">{friendUser?.username}</span>
      </li>{" "}
    </>
  );
};
export default Conversation;
