import React from "react";
import { useContext, useEffect } from "react";
import { Navigate, Outlet } from "react-router-dom";

import { ResponseContext1 } from "./App1";

const PrivateRoutes = () => {
  const { authToken1 } = useContext(ResponseContext1);

  return authToken1 ? <Outlet /> : <Navigate to="/loginPage" />;
};

export default PrivateRoutes;
