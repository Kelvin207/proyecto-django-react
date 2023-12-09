
import React, {useEffect} from 'react'
import { useState } from 'react'

import './reserva.css';
import '../App.css'
import {HiOutlineClipboardCheck} from 'react-icons/hi' 
import 'aos/dist/aos.css'
import {FiFacebook} from 'react-icons/fi'
import {AiOutlineInstagram} from 'react-icons/ai'
import {SiTripadvisor} from 'react-icons/si'
import {BsListTask} from 'react-icons/bs'
import {TbApps} from 'react-icons/tb'
import Footer from "../components/footer/Footer";
import Navbar from "../components/navbar/Navbar";
import { getReserva } from '../services/reserva.services';
import { getCliente } from '../services/cliente.services';
import { getHotel } from '../services/hotel.services';

let dataReserva = []
let dataCliente = []
let dataHotel = []

const Reserva = () => {

  const[reserva,setReserva] = useState(dataReserva)

  useEffect(()=>{
    const fecthData = async () => {
      const response = await getReserva()
      console.log(response.data)
      setReserva(response.data[1])
      dataReserva = response.data
      console.log(dataReserva)
    }
    fecthData()    
  },[])

  
  const[cliente,setCliente] = useState(dataCliente)

  useEffect(()=>{
    const fecthData = async () => {
      const response = await getCliente()
      console.log(response.data)
      setCliente(response.data[1])
      dataCliente = response.data
      console.log(dataCliente)
    }
    fecthData()    
  },[])

  /*const filterItems = (val=reserva.cliente) => {
    const newItems = dataCliente.filter((newval) => newval.id.includes(val))
    setCliente(newItems) 
  }*/

  const[hotel,setHotel] = useState(dataHotel)

  useEffect(()=>{
    const fecthData = async () => {
      const response = await getHotel()
      console.log(response.data)
      setHotel(response.data[1])
      dataHotel = response.data
      console.log(dataHotel)
    }
    fecthData()    
  },[])

  return (

    <>
    <Navbar />
    <section className='home'>
        
        <div className="homeContent container">
          
          <div className="textDiv">
            <span className="smallText">
              Bienvenido
            </span>
  
            <h1 className="homeTitle">
              Reserva tu Hotel
            </h1>
          </div>
  
          <div className="cardDiv grid">
            <div className="nombresInput">
              <label htmlFor="name">Nombre y Apellidos: </label>
              <div className="input flex">
                <input
                  id="namefilter"
                  type="text"
                  placeholder="Introduzca su nombre"
                  value={cliente.nombres + ' ' + cliente.apellido_paterno + ' ' + cliente.apellido_materno}            
                />              
              </div>
            </div>
            
            <div className="emailInput">
              <label htmlFor="email">Correo Electrónico: </label>
              <div className="input flex">
                <input
                  id="emailfilter"
                  type="text"
                  placeholder="Introduzca su correo"  
                  value={cliente.correo}              
                />              
              </div>
            </div>
  
            <div className="celularInput">
              <label htmlFor="celular">Celular: </label>
              <div className="input flex">
                <input
                  id="celularfilter"
                  type="text"
                  placeholder="Introduzca su celular"  
                  value={cliente.celular}                
                />              
              </div>
            </div>
            
            <div className="hotelInput">
              <label htmlFor="hotel">Hotel: </label>
              <div className="input flex">
                <input
                  id="hotelfilter"
                  type="text"
                  placeholder="Introduzca el hotel" 
                  value={hotel.nombre}                
                />              
              </div>
            </div>
  
            <div className="dateInput">
              <label htmlFor="date">Fecha Inicio: </label>
              <div className="input flex">
                <input type="date" value={reserva.fecha_inicio}/>
              </div>
            </div>
  
            <div className="dateInput">
              <label htmlFor="date">Fecha Fin: </label>
              <div className="input flex">
                <input type="date" value={reserva.fecha_fin}/>
              </div>
            </div>
  
            <div className="searchOptions flex">
            <HiOutlineClipboardCheck className = 'icon'/>
              <span>DETALLE</span>
            </div>
          </div>
  
          <div className="homeFooterIcons flex">
            <div className="rightIcons">
              <FiFacebook className="icon" />
              <AiOutlineInstagram className="icon" />
              <SiTripadvisor className="icon" />
            </div>
  
            <div className="leftIcons">
              <BsListTask className="icon" />
              <TbApps className="icon" />
            </div>
          </div>
        </div>
      </section>
      <Footer />
    </>
    
  );
};

export default Reserva;
