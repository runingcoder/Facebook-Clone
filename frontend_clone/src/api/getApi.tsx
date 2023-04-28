// @ts-ignore
import Axios from "../config/Axios.ts";


export const GetPosts = async (
    token: string
  ) => {
    return Axios.get("/posts",  { headers: {"Authorization" : `Bearer ${token}`} })
  };
  
  export const GetUsers = async (
    token: string
  ) => {
    return Axios.get("/user",  { headers: {"Authorization" : `Bearer ${token}`} })
  };
  export const GetOneUser = async (
    token: string,
    userId: number
  ) => {
    return Axios.get(`/user/${userId}`,  { headers: {"Authorization" : `Bearer ${token}`} })
  };
  export const GetMyPosts = async (
    token: string
  ) => {
    return Axios.get("/getMyPosts",  { headers: {"Authorization" : `Bearer ${token}`} })
  };
  
  
  export const GetPostsOfAUser = async (
    username: string,
    token: string
  ) => {
    return Axios.get(`/getSpecificUserPost/${username}`,  { headers: {"Authorization" : `Bearer ${token}`} })
  };
  
  
  export const GetUserByName = async (
    username: string,
    token: string
  ) => {
    return Axios.get(`/getuserByName/${username}`,  { headers: {"Authorization" : `Bearer ${token}`} })
  };

  export const GetPostLikeForEach = async (
    userId: number,
    postId: number,
    token: string
  ) => {
    return Axios.get(`/likePost/${userId}/${postId}`, { headers: {"Authorization" : `Bearer ${token}`} })
    // have to pass the header as the third object instead  of second, . we are sending an empty body here so {}
  };
  export const GetFriends = async (
      userId: number,
    token: string
  ) => {
    return Axios.get(`/friendsList/${userId}`,  { headers: {"Authorization" : `Bearer ${token}`} })
  };
  export const GetAllUsers = async (
    token: string
  ) => {
    return Axios.get("/user",  { headers: {"Authorization" : `Bearer ${token}`} })
  };
  export const GetConvoOfAUser = async (
    userId: number,
    token: string
  ) => {
    return Axios.get(`/conversations/${userId}`,  { headers: {"Authorization" : `Bearer ${token}`} })
  };

  export const GetMessageFromConvoId = async (
    convoId: number,
    token: string
  ) => {
    return Axios.get(`/messages/${convoId}`,  { headers: {"Authorization" : `Bearer ${token}`} })
  };
