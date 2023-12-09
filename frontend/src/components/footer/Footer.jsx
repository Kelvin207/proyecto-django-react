import React, {useEffect} from "react";
import "./footer.css";
import video2 from "../../assets/home_beach_hotel.mp4";
import { FiSend } from "react-icons/fi";
import { TbWorldSearch } from "react-icons/tb";
import { AiOutlineTwitter } from "react-icons/ai";
import { AiFillYoutube } from "react-icons/ai";
import { AiFillInstagram } from "react-icons/ai";
import { FaTripadvisor } from "react-icons/fa";
import { FiChevronRight } from "react-icons/fi";

import Aos from 'aos'
import 'aos/dist/aos.css'

const Footer = () => {

  useEffect(()=>{
    Aos.init({duration:2000})
  },[])

  return (
    <section className="footer">
      <div className="videoDiv">
        <video src={video2} loop autoPlay muted type="video/mp4"></video>
      </div>

      <div className="secContent container">
        <div className="contactDiv flex">
          <div data-aos='fade-up' className="text">
            <small>Mantenerse en Contacto</small>
            <h2>Hospedarse con nosotros</h2>
          </div>

          <div className="inputDiv flex">
            <input data-aos='fade-up' type="text" placeholder="Ingrese Correo Electrónico" />
            <button data-aos='fade-up' className="btn flex" type="submit">
              {" "}
              Enviar
              <FiSend className="icon" />
            </button>
          </div>
        </div>

        <div className="footerCard flex">
          <div className="footerIntro flex">
            <div className="logoDiv">
              <a href="#" className="logo flex">
                <TbWorldSearch className="icon" /> Hotel.
              </a>
            </div>

            <div data-aos='fade-up' className="footerParagraph">
            En nuestra aplicación, encontrarás precios más bajos y más opciones. Además, puedes pagar con Apple Pay y Android Pay. También podrás acceder a tus reservas en tu cuenta personal.
            <div className="imagenContainer">
            <img className="imagenQr" src="https://es.mailpro.com/blog/image.axd?picture=/QRCODES.png" alt="" />
            </div>
            
            </div>

            <div data-aos='fade-up' className="footerSocials flex">
              <AiOutlineTwitter className="icon" />
              <AiFillYoutube className="icon" />
              <AiFillInstagram className="icon" />
              <FaTripadvisor className="icon" />
            </div>
          </div>

          {/* grid */}
          <div className="footerLinks grid">

            {/* Primer Grupo */}

            <div data-aos='fade-up' data-aos-duration='3000' className="linkGroup">
              <span className="groupTitle">NUESTRA AGENCIA</span>
              <li className="footerList flex">
                <FiChevronRight className="icon" />
                Servicio
              </li>
              <li className="footerList flex">
                <FiChevronRight className="icon" />
                Seguro
              </li>
              <li className="footerList flex">
                <FiChevronRight className="icon" />
                Agencia
              </li>
              <li className="footerList flex">
                <FiChevronRight className="icon" />
                Turismo
              </li>
              <li className="footerList flex">
                <FiChevronRight className="icon" />
                Pago
              </li>
            </div>

            {/* Segundo Grupo */}

            <div data-aos='fade-up' data-aos-duration='4000' className="linkGroup">
              <span className="groupTitle">CONSULTAS</span>
              <li className="footerList flex">
                <FiChevronRight className="icon" />
                Mis reservaciones
              </li>
              <li className="footerList flex">
                <FiChevronRight className="icon" />
                Preguntas
              </li>
              <li className="footerList flex">
                <FiChevronRight className="icon" />
                Contacto
              </li>
              <li className="footerList flex">
                <FiChevronRight className="icon" />
                Agentes de viaje
              </li>
              <li className="footerList flex">
                <FiChevronRight className="icon" />
                Afiliarte a nosotros
              </li>
            </div>

            {/* Tercer Grupo */}

            <div data-aos='fade-up' data-aos-duration='5000' className="linkGroup">
              <span className="groupTitle">POLÍTICAS</span>
              <li className="footerList flex">
                <FiChevronRight className="icon" />
                Términos
              </li>
              <li className="footerList flex">
                <FiChevronRight className="icon" />
                Privacidad
              </li>
              <li className="footerList flex">
                <FiChevronRight className="icon" />
                Promocionarse
              </li>
              <li className="footerList flex">
                <FiChevronRight className="icon" />
                Guías de viaje
              </li>
              <li className="footerList flex">
                <FiChevronRight className="icon" />
                Índice
              </li>
            </div>

          </div>

          <div className="footerDiv flex">
            <small>hoteles@gmail.com</small>
            <small>Cel: 955666333</small>
          </div>
        </div>
      </div>
    </section>
  );
};

export default Footer;
