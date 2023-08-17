  import React from "react";
  import Axios from "../../config/Axios.ts";

  import { useState, useEffect, useContext, useRef } from "react";
  import Rightbar from "../../components/rightbar/Rightbar";

  import { AuthContext } from "../../AuthContext";
  import { useNavigate } from "react-router-dom";
  import TopBar from "../../components/topbar/TopBar";
  import Conversation from "../../components/conversation/Conversation";
  import Message from "../../components/message/Message";
  import { GetConvoOfAUser, GetMessageFromConvoId } from "../../api/getApi.tsx";

  import "./Messenger.css";

  const Messenger = () => {
    const navigate = useNavigate();
    const [currentChat, setCurrentChat] = useState(()=>
    localStorage.getItem("currentChat")?
    JSON.parse(localStorage.getItem("currentChat")):
    null
    );
    const [newMessage, setNewMessage] = useState("");
    const [conversations, setConversations] = useState([]);
    const [messages, setMessages] = useState([]);

    const scrollRef = useRef();

    const { user, getFriends, authToken } =
      useContext(AuthContext);
  // just load this once when the page is reloaded again and again.

    useEffect(() => {
      async function GetConversationsofAUser() {
        const answer = await GetConvoOfAUser(user.user_id, authToken.access);
        if (answer.status === 200) {
          setConversations(answer.data);
          // console.log(answer.data);
        }
      }

      GetConversationsofAUser();
    }, [user.user_id]);

    useEffect(() => {
      getFriends();
    }, []);
    useEffect(() => {
      async function GetMessages() {
        if(currentChat){
          const answer = await GetMessageFromConvoId(
            currentChat.id,
            authToken.access
          );
          if (answer.status === 200) {
            setMessages(answer.data);
          }
        }
      
      }
      GetMessages();
    }, [currentChat]);

    const handleSubmit = async (e) => {
      e.preventDefault();
      const res = await Axios.post(
        `messages/${currentChat.id}`,
        { text: newMessage, sender: user.user_id },
        { headers: { Authorization: `Bearer ${authToken.access}` } }
      );

      setMessages([...messages, res.data]);
      setNewMessage("");

    };
    function OnclickSetCCAndLocalStorage(c){
      setCurrentChat(c)
      localStorage.setItem("currentChat", JSON.stringify(c))
    }
    useEffect(() => {
      if (scrollRef.current) {
        scrollRef.current.scrollIntoView({ behavior: "smooth", block: "end" });
      }
    }, []);
    useEffect(() => {
      if (scrollRef.current) {
        setTimeout(() => {
          scrollRef.current.scrollIntoView({ behavior: "smooth", block: "end" });
        }, 100);
      }
    }, [messages, currentChat]);


  return (
      <>
        <TopBar />
        <div className="mainMessenger">
          <div className="leftSide">
            <div className="leftSideWrapper">
              <input placeholder="Search for friends" className="MenuInput" />

              <div className="simpleText"> List of User chat</div>

              <ul className="sidebarFriendList">
                {conversations.map((c) => (
                  <div onClick={() => OnclickSetCCAndLocalStorage(c)}>
                    <Conversation
                      key={c.id}  
                      conversation={c}
                      currentUser={user}
                    />
                  </div>
                ))}
              </ul>
            </div>
          </div>
          <div className="middle">
            <div className="middleWrapper">
              {currentChat ? (
                <>
                  <div className="chatBoxTop"  ref={scrollRef} >
                    {messages.map((m) => (
                      
                      <Message message={m} own={m.sender === user.user_id} currentChat = {currentChat}/>
                    
                    ))}
                  </div>
                
                </>
              ) : (
                <span className="noConversationText">
                  Open a conversation to start a chat.
                </span>
              )}
            </div>
            <div className="messageBottomBox"  >
                    <textarea
                      className="chatMessage"
                      placeholder="write something..."
                      onFocus={console.log('sowthing')}
                      onChange={(e) => setNewMessage(e.target.value)}
                      value={newMessage}
                    ></textarea>
                    <button type="submit" className="chatSubmit" onClick={handleSubmit} >
                      Send
                    </button>
                  </div>
          </div>
          <div className="rightSide">
            <Rightbar messenger />
          </div>
        </div>
      </>
    );
  };

  export default Messenger;
