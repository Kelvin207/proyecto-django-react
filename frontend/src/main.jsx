import React from 'react'
import ReactDOM from 'react-dom/client'
import App from './App.jsx'
import './index.css'
import { BrowserRouter } from "react-router-dom"
import { Routes, Route } from "react-router-dom"
import SobreNosotros from './pages/SobreNosotros.jsx'
import Reserva from './pages/Reserva.jsx'

ReactDOM.createRoot(document.getElementById('root')).render(
  <BrowserRouter>
    <Routes>
        <Route path="/" element={ <App /> } />
        <Route path="nosotros" element={ <SobreNosotros /> } />
        <Route path="reserva" element={ <Reserva /> } />
      </Routes>    
  </BrowserRouter>,
)
