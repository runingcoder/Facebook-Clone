// @ts-ignore
import Axios from "../config/Axios.ts";


 export const PutLike = async (
    like: number, 
    postId: number,
    token: string,

  ) => {
    return Axios.put(`/putLike/${postId}`, {
     like
    }, { headers: {"Authorization" : `Bearer ${token}`} })};
  
 