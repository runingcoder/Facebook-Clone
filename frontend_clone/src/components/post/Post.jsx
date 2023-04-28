import "./post.css";
import MoreVertIcon from "@mui/icons-material/MoreVert";
import { Users } from "../../dummyData";
import { GetOneUser, GetPostLikeForEach } from "../../api/getApi.tsx";
import { ToggleLike } from "../../api/postApi.tsx";
import { PutLike } from "../../api/putApi.tsx";

import { useEffect, useState, useContext } from "react";
import { AuthContext } from "../../AuthContext";
import { format } from "timeago.js";
import { Link } from "react-router-dom";

const Post = ({ post }) => {
  const [userPost, setUserPost] = useState({});
  const { authToken, user } = useContext(AuthContext);

  const [like, setLike] = useState(post.like);

  const [isLiked, setIsLiked] = useState(false);
  const likeHandler = async () => {
    const answer = await ToggleLike(user.user_id, post.id, authToken.access);

    setLike(isLiked ? like - 1 : like + 1);

    setIsLiked(!isLiked);
  };
  useEffect(() => {
    const getUser = async () => {
      const res = await GetOneUser(authToken.access, post.creator);
      setUserPost(res.data);
    };
    getUser();
  }, [post.creator]);
  useEffect(() => {
    const putLike = async () => {
      const putLike = await PutLike(like, post.id, authToken.access);
    };
    putLike();
  }, [like]);
  useEffect(() => {
    const getLikeStatus = async () => {
      const getLikeStat = await GetPostLikeForEach(
        user.user_id,
        post.id,
        authToken.access
      );

      setIsLiked(getLikeStat.data.status);
    };
    getLikeStatus();
  }, [post.like]);

  return (
    <div className="post">
      <div className="postWrapper">
        <div className="postTop">
          <div className="postTopLeft">
            <Link to={`/profile/${userPost?.username}`}>
              <img
                src={userPost?.profilePicture}
                className="postProfileImg"
                alt=""
              />
            </Link>

            <span className="postUsername">{userPost?.username}</span>
            <span className="postDate">{format(post?.created_at)}</span>
          </div>
          <div className="postTopRight">
            <MoreVertIcon />
          </div>
        </div>

        <div className="postCenter">
          <p className="postText">{post.content}</p>
          <img src={post.image} className="postImg" alt="" />
        </div>
        <div className="postBottom">
          <div className="postBottomLeft">
            <img
              src="assets/like.png"
              className={isLiked ? "likeIcon" : "likeIconDisabled"}
              onClick={likeHandler}
              alt=""
            />
            <img
              src="assets/heart.png"
              className="likeIcon"
              onClick={likeHandler}
              alt=""
            />
            <span className="postLikeCounter">{like}</span>
          </div>
          <div className="postBottomRight">
            <span className="postCommentText">
              {post.commentNumber} comments
            </span>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Post;
