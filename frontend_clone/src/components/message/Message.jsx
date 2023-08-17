import "./message.css";
import { format } from "timeago.js";
import { AuthContext } from "../../AuthContext";
import { useContext, useEffect, useState } from "react";
import { GetOneUser } from "../../api/getApi.tsx";


export default function Message({ message, own, currentChat }) {
   const { authToken } =
    useContext(AuthContext);
    const [targetUser, setTargetUser] = useState(null);
    // have to do message.sender instead of user.user_id because this is inside message ko iteration.
    const [loading, setLoading] = useState(true);
    const  [friendOrSelfId] = useState(()=>
    currentChat.sender === message.sender
        ? currentChat.sender
        : currentChat.receiver
        )  
          // console.log(friendOrSelfId)  


    useEffect(() => {
      
      
      
        async function fetchUser() {
        const answer = await GetOneUser(authToken.access, friendOrSelfId);
        if (answer.status === 200) {
          
          // console.log(answer.data);
          setTargetUser(answer.data);
          setLoading(false);
        }
      }
      fetchUser();
        }
        , []);
    
  
    // own is true if the sender of the message is the current user.
    // problem, chai, answer.data console.log(answer.data) maa was showing the values, but set state 
    // was not working (when I used setstate above console.log)but when I used setstate below console.log, it worked, 
    // and I commented my console.log(answer.data)

  return  !loading? (
    <div className={own ? "message own" : "message"}>
      <div className="messageTop">
        <img
          className=  "messageImg"
          src={targetUser?.profilePicture}
          alt=""
        />
        <p className="messageText">{message.text}</p>
      </div>
      <div className="messageBottom">{format(message.created_at)}</div>
    </div>
  ): null;
}
