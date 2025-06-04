import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import LoginPage from './pages/LoginPage';
import SignupForm from "./components/SignupForm";
import "./components/SignupForm.css";

function App() {
  return (
    <Router>
      <Routes>
        {/* Signup page route */}
        <Route path="/signup" element={<SignupForm />} />
        <Route path="/" element={<LoginPage />} />
        <Route path="/login" element={<LoginPage />} />
        <Route path="/" element={<SignupForm />} /> {/* Temporary Home Page */}
        {/* Add other routes later */}
        //what the hell, why it's not getting it
      </Routes>
    </Router>
  );
}

export default App;
