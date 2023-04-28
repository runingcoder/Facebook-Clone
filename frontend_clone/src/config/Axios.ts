import axios from "axios";

import { domain } from "./url.ts";
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
