import TopBar from "./components/topbar/TopBar";
import Home from "./pages/home/Home";
import NotFound from "./pages/NotFound/Notfound";
import Profile from "./pages/profile/Profile";
import Login from "./pages/login/Login";
import Register from "./pages/register/Register";
import Messenger from "./pages/Messenger/Messenger";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import PrivateRoutesMain from "./AnotherRoute";
import AuthProvider from "./AuthContext";
import ScrollToTop from "./scrollToTop";
function App() {
  return (
    <Router>
      <ScrollToTop />
      <AuthProvider>
        <Routes>
          <Route element={<PrivateRoutesMain />}>
            <Route path="/" element={<Home />} />
            <Route path="/profile/:username" element={<Profile />} />
            <Route path="/messenger" element={<Messenger />} />
          </Route>
          <Route path="/login" element={<Login />} />
          <Route path="/register" element={<Register />} />


          <Route path="/notFound" element={<NotFound />} />
        </Routes>
      </AuthProvider>
    </Router>
  );
}

export default App;
