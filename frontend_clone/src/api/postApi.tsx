  // @ts-ignore
import Axios from "../config/Axios.ts";


 export const SignIn = async (
    email: string,
    password: string,
  ) => {
    return Axios.post("login", {
      email,
      password,
    });
  };
 

  export const RefreshApi = async (
    refresh: string
  ) => {
    return Axios.post("/token/refresh", {
      refresh
    });
  };

  export const ToggleLike = async (
    userId: number,
    postId: number,
    token: string
  ) => {
    return Axios.post(`/likePost/${userId}/${postId}`, {}, { headers: {"Authorization" : `Bearer ${token}`} })
    // have to pass the header as the third object instead  of second, . we are sending an empty body here so {}
  };

  export const Register = async (
    username: string, 
    email: string,
    password: string,
    re_password: string,
    city:string,
  ) => {
    return Axios.post("/register", {
      username,
      email,
      password,
      re_password,
      city
    });
  };
