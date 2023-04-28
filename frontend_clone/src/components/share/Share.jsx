import './share.css'
import PermMediaIcon from '@mui/icons-material/PermMedia';
import LabelIcon from '@mui/icons-material/Label';
import RoomIcon from '@mui/icons-material/Room';
import EmojiEmotionsIcon from '@mui/icons-material/EmojiEmotions';
import { AuthContext } from "../../AuthContext";
import { useContext, useEffect } from "react";
import { Link } from "react-router-dom";



const Share = () => {

const {user, mainUser, getMainUser} =
useContext(AuthContext);
useEffect(() => {
  getMainUser();
}, [user]);
  return (
    <div className="share">
      <div className="shareWrapper">
        <div className="shareTop">
        <Link to={`/profile/${mainUser?.username}`}>

          <img className="shareProfileImg" src={mainUser?.profilePicture} alt="" />
          </Link>
          <input
            placeholder={` Whats in your mind ${mainUser?.first_name} ?`}
            className="shareInput"
          />
        </div>
        <hr className="shareHr"/>
        <div className="shareBottom">
            <div className="shareOptions">
                <div className="shareOption">
                    <PermMediaIcon htmlColor="tomato" className="shareIcon"/>
                    <span className="shareOptionText">Photo or Video</span>
                </div>
                <div className="shareOption">
                    <LabelIcon htmlColor="blue" className="shareIcon"/>
                    <span className="shareOptionText">Tag</span>
                </div>
                <div className="shareOption">
                    <RoomIcon htmlColor="green" className="shareIcon"/>
                    <span className="shareOptionText">Location</span>
                </div>
                <div className="shareOption">
                    <EmojiEmotionsIcon htmlColor="goldenrod" className="shareIcon"/>
                    <span className="shareOptionText">Feelings</span>
                </div>
            </div>
            <button className="shareButton">Share</button>
        </div>
      </div>
    </div>
  )
}

export default Share
