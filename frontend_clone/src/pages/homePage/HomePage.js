import React from "react";
import "./homePage.css";
import { useContext, useEffect } from "react";

import { ResponseContext1 } from "../../App1";
const HomePage = () => {
  const { authToken1 } = useContext(ResponseContext1);

  return (
    <div className="homePage">
      This is the homepage and the token is currently === {`${authToken1}`}
    </div>
  );
};

export default HomePage;
