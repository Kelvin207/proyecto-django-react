import React, {useEffect, useState} from 'react'
import './home.css'
import video from '../../assets/home_beach_hotel.mp4'
import {GrLocation} from 'react-icons/gr'
import {HiFilter} from 'react-icons/hi'
import {FiFacebook} from 'react-icons/fi'
import {AiOutlineInstagram} from 'react-icons/ai'
import {SiTripadvisor} from 'react-icons/si'
import {BsListTask} from 'react-icons/bs'
import {TbApps} from 'react-icons/tb'

import Aos from 'aos'
import 'aos/dist/aos.css'

const Home = ({filterItems, filterRange}) => {

  // const [namefilter,setNamefilter] = useState('');
  const [rangefilter,setRangefilter] = useState(1000);
  const [dateendfilter,setDateendfilter] = useState(new Date());
  const [datebeginfilter,setDatebeginfilter] = useState(new Date());

  
  
  const filterDateEnd = (e) => {
        
    setDateendfilter(new Date(e.target.value));      
  };

  const filterDateBegin = (e) => {    
    setDatebeginfilter(new Date(e.target.value));      
  };

  useEffect(()=>{
    Aos.init({duration:2000})
  },[])

  return (
    <section className='home'>
      <div className='overlay'></div>
      <video src={video} muted autoPlay loop type='video/mp4'></video>

      <div className='homeContent container'>

        <div className='textDiv'>

          <span data-aos='fade-up' className='smallText'>
            Nuestros Paquetes
          </span>

          <h1 data-aos='fade-up' className='homeTitle'>
            Busca y reserva tu Hotel
          </h1>

        </div>
        

        <div data-aos='fade-up' className='cardDiv grid'> 
          <div className='destinationInput'>
            <label htmlFor="city">Busca tu Hotel favorito: </label>
            <div className='input flex'>
              <input id='namefilter' type="text" placeholder='Introduzca el nombre' onChange={e => filterItems(e.target.value.toUpperCase())} />
              <GrLocation className='icon' />              
            </div>
          </div>

          <div className='dateInput'>
            <label htmlFor="date">Seleccione la fecha Inicio: </label>
            <div className='input flex'>
              <input type="date" onChange={filterDateBegin}/>              
            </div>
          </div>

          <div className='dateInput'>
            <label htmlFor="date">Seleccione la fecha Fin: </label>
            <div className='input flex'>
              <input type="date" onChange={filterDateEnd}/>              
            </div>
          </div>


          <div className='priceInput'>
            <div className="label_total flex">
              <label htmlFor="price">Máximo Precio:</label>
              <h3 className='total'>S/. {rangefilter}</h3>              
            </div>
            <div className='input flex'>
              <input type="range" value={rangefilter} max={1000} min = {200} onChange={e => {filterRange(e.target.value); setRangefilter(e.target.value)} }/>

            </div>
          </div>

          <div className="searchOptions flex">
            <HiFilter className='icon' />
            <span>MAS FILTROS</span>
          </div>

        </div>

        <div data-aos='fade-up' className="homeFooterIcons flex">
          <div className="rightIcons">
            <FiFacebook className = 'icon' />
            <AiOutlineInstagram className = 'icon' />
            <SiTripadvisor className = 'icon' />
          </div>

          <div className='leftIcons'>
          <BsListTask className = 'icon' />
          <TbApps className = 'icon' />
          </div>

        </div>

        

      </div>
    </section>
  )
}

export default Home