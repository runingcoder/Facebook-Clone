import React from "react";
import { Link } from "react-router-dom";
import { AuthContext } from "../../AuthContext";

const Header = () => {
  const { user } = useContext(AuthContext);

  return (
    <div>
      {user && <p>Welcome {user.user_id} user!</p>}
      <Link to="/">Home</Link>
      <span> |</span>
      <Link to="/loginPage">Login</Link>
    </div>
  );
};

export default Header;
