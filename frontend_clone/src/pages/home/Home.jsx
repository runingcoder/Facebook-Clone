
import './home.css'
import Feed from '../../components/feed/Feed'
import Sidebar from '../../components/sidebar/Sidebar'
import Rightbar from '../../components/rightbar/Rightbar'
import TopBar from "../../components/topbar/TopBar";
import { useContext, useEffect } from "react";
import { AuthContext } from "../../AuthContext";

const Home = () => {
  // const { name } = useContext(AuthContext);

  return (
    <>
      {/* <div>Hello {name}</div> */}
      <TopBar />
      <div className="homeContainer">
        <Sidebar />
        <Feed />

        <Rightbar />
      </div>
    </>
  );
};

export default Home