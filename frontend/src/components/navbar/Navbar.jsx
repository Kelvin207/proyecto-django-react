import React, {useState} from "react";
import "./navbar.css";
import { TbWorldSearch } from "react-icons/tb";
import { AiFillCloseCircle } from "react-icons/ai";
import { TbGridDots } from "react-icons/tb";
import { Link } from "react-router-dom";

const Navbar = () => {
  const [active, setActive] = useState('navBar')

  const showNav = () =>{
    setActive('navBar activeNavbar')
  }

  //Function Remove
  const removeNavBar = () =>{
    setActive ('navBar')
  }

  return (
    <section className="navBarSection">
      <header className="header flex">
        <div className="logoDiv">
          <a href="#" className="logo flex">
            <h1>
              <TbWorldSearch className="icon" />
              Hoteles
            </h1>
          </a>
        </div>

        <div className={active}>
          <ul className="navLists flex">
            <li className="navItem">              
              <Link to="/" className="navLink">Inicio</Link>   
            </li>
            <li className="navItem">              
            <Link to="/" className="navLink">Paquetes</Link>
            </li>
            <li className="navItem">
            <Link to="/" className="navLink">Galería</Link>
            </li>
            <li className="navItem">
            <Link to="/" className="navLink">Socios</Link>
            </li>
            <li className="navItem">
            <Link to="/" className="navLink">Contacto</Link>
            </li>
            
            <button className="btn">
            <Link to="reserva">RESERVAR AHORA</Link>              
            </button>
          </ul>

          <div onClick={removeNavBar} className="closeNavbar">
            <AiFillCloseCircle className="icon" />
          </div>
        </div>

        <div onClick={showNav} className="toggleNavbar">
          <TbGridDots className="icon" />
        </div>
      </header>
    </section>
  );
};

export default Navbar;
