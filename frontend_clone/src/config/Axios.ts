import axios from "axios";
 // @ts-ignore
import { domain } from "./url.tsx";
axios.defaults.withCredentials = true;

const Axios = axios.create({
  baseURL: domain,
  responseType: "json",
  withCredentials: true,
  headers: {
    "Content-Type": "application/json",
    // "Access-Control-Allow-Origin" : "*",
    // "Access-Control-Allow-Private-Network":"*",
  },
});

export default Axios;
