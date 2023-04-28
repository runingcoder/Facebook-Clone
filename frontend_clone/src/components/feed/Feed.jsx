import "./feed.css";
import Post from "../../components/post/Post";
// import { Posts } from "../../dummyData";
import { AuthContext } from "../../AuthContext";

import Axios from "../../config/Axios.ts";
import { useEffect, useState, useContext } from "react";
import { useNavigate } from "react-router-dom";
import { GetPosts, GetMyPosts, GetPostsOfAUser } from "../../api/getApi.tsx";
import Share from "../../components/share/Share";
const Feed = ({ username }) => {
  const navigate = useNavigate();
  const { authToken, setUsersList, usersList } = useContext(AuthContext);
  // const { user, setUser } = useContext(AuthContext);
  const [posts, setPosts] = useState([]);
  // yo navigate useEffect bhitrei call gare paxi matra chalxa raicha.
  async function fetchPosts() {
    const answer = username
      ? await GetPostsOfAUser(username, authToken.access).catch(() => {
          navigate("/notFound");
        })
      : await GetPosts(authToken.access);
    if (answer.status === 200) {
      setPosts(
        answer.data.sort((p1, p2) => {
          return new Date(p2.created_at) - new Date(p1.created_at);
        })
      );
    }
  }
  useEffect(() => {
    fetchPosts();
  }, [username, authToken]);

  return (
    <div className="feed">
      <Share />
      {posts.map((p) => (
        <Post key={p.id} post={p} />
      ))}
    </div>
  );
};

export default Feed;
