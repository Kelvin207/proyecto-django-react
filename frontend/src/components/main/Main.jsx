import React, {useEffect} from 'react'
import { useState } from 'react'
import './main.css'
import {HiOutlineLocationMarker} from 'react-icons/hi' 
import {HiOutlineClipboardCheck} from 'react-icons/hi' 
import img1 from '../../assets/img (1).jpg'
import img2 from '../../assets/img (2).jpg'
import img3 from '../../assets/img (3).jpg'
import img4 from '../../assets/img (4).jpg'
import img5 from '../../assets/img (5).jpg'
import img6 from '../../assets/img (6).jpg'
import img7 from '../../assets/img (7).jpg'
import img8 from '../../assets/img (8).jpg'
import img9 from '../../assets/img (9).jpg'
import img10 from '../../assets/img (10).jpg'

import Aos from 'aos'
import 'aos/dist/aos.css'
import Card from './Card'
import Home from '../home/Home'
import { getAllHotel } from '../../services/hotel.services'


// const Data = [
//   {
//     id:1,
//     imgSrc:img1,
//     destTitle: 'Sainte Jeanne Boutique & Spa',
//     location: 'Mar del Plata, Argentina',
//     grade: 'Calificación',
//     fees: 700,
//     description: 'Sainte Jeanne Hotel Boutique & Spa está ubicado en el corazón de Los Troncos, un barrio residencial y elegante de Mar del Plata. El lujo, el confort y la pasión por los detalles dan personalidad a esta cálida propuesta'
//   },
//   {
//     id:2,
//     imgSrc:img2,
//     destTitle: 'Vila Da Santa',
//     location: 'Buzios, Brasil',
//     grade: 'Calificación',
//     fees: 500,
//     description: 'Esta casa de pescadores fue renovada con elegancia, pero sin descuidar su espíritu original. Se abre a un gran patio central con dos piscinas de diseño, una de ellas climatizada para ofrecer a sus huéspedes todo el confort y esplendor.'
//   },
//   {
//     id:3,
//     imgSrc:img3,
//     destTitle: 'Tierra Patagonia',
//     location: 'Torres del Paine, Chile',
//     grade: 'Calificación',
//     fees: 300,
//     description: 'Tierra Patagonia Hotel & Spa es un lujoso hotel ubicado en la Patagonia chilena a orillas del lago Sarmiento, envuelto en el extraordinario escenario natural de Torres del Paine, un parque nacional rodeado de montañas, cascadas, glaciares, lagos y peñascos.'
//   },
//   {
//     id:4,
//     imgSrc:img4,
//     destTitle: 'La Bamba de Areco',
//     location: 'Buenos Aires, Argentina',
//     grade: 'Calificación',
//     fees: 600,
//     description: 'La Bamba de Areco está ubicada en San Antonio de Areco, en el corazón de la pampa. Es una de las estancias más antiguas de la Argentina, recientemente restaurada para ofrecer a sus huéspedes todo el confort y esplendor colonial.'
//   },
//   {
//     id:5,
//     imgSrc:img5,
//     destTitle: 'Ponta dos Ganchos',
//     location: 'Buzios, Brasil',
//     grade: 'Calificación',
//     fees: 800,
//     description: 'Ubicado a pasos de San Pablo, Río de Janeiro, e incluso Buenos Aires, en una península privada y rodeado por un pintoresco pueblo de pescadores, se encuentra Ponta dos Ganchos, uno de los resorts de playa más exclusivos del sur de Brasil.'
//   },
//   {
//     id:6,
//     imgSrc:img6,
//     destTitle: 'Vik Chile',
//     location: 'Millahue, Chile',
//     grade: 'Calificación',
//     fees: 900,
//     description: 'Vik Chile es una hacienda moderna y sofisticada en donde confluyen el arte y el diseño de vanguardia, una ubicación sin igual, fabulosos escenarios naturales, servicio personalizado y una cuidada atención por el medioambiente.'
//   },
//   {
//     id:7,
//     imgSrc:img7,
//     destTitle: 'Campo Tinto',
//     location: 'Colonia, Uruguay',
//     grade: 'Calificación',
//     fees: 500,
//     description: 'Campo Tinto es una chacra de 25 hectáreas ubicada en el corazón de San Roque, en medio del ondulante Carmelo, una zona de chacras, viñedos, bodegas y frutales, con mucha historia y un ritmo de vida tranquilo y natural.'
//   },
//   {
//     id:8,
//     imgSrc:img8,
//     destTitle: 'Rincón del Socorro',
//     location: 'Corrientes, Argentina',
//     grade: 'Calificación',
//     fees: 500,
//     description: 'Rincón del Socorro es una estancia ubicada en la reserva natural de los Esteros del Iberá, un santuario de vida silvestre, donde la Fundación Conservation Land Trust decidió desarrollar un ambicioso proyecto de recuperación y conservación.'
//   },
//   {
//     id:9,
//     imgSrc:img9,
//     destTitle: 'Vira Vira',
//     location: 'Pucón, Chile',
//     grade: 'Calificación',
//     fees: 400,
//     description: 'Hotel Hacienda Vira Vira Relais & Chateaux se encuentra en una ubicación privilegiada, muy cerca de Pucón, Chile. Su impresionante parque nativo de 23 hectáreas a orillas del río Liucura ofrece un oasis único de paz y tranquilidad.'
//   },
//   {
//     id:10,
//     imgSrc:img10,
//     destTitle: 'Luma Casa de Montaña',
//     location: 'Villa La Angostura, Argentina',
//     grade: 'Calificación',
//     fees: 500,
//     description: 'Emplazada en un entorno natural a orillas del lago Nahuel Huapi y con la imponente imagen de la Cordillera de Los Andes, Luma Casa de Montaña se presenta majestuosa pero a la vez simple y hogareña: un lugar diferente, atemporal y mágico.'
//   }

// ]

let Data = []

const Main = () => {

  const[item,setItems] = useState(Data)

  useEffect(()=>{
    const fecthData = async () => {
      const response = await getAllHotel()
      console.log(response.data)
      setItems(response.data)
      Data = response.data
    }
    fecthData()    
  },[])

  const filterItems = (val) => {
    const newItems = Data.filter((newval) => newval.nombre.toUpperCase().includes(val))
    setItems(newItems) 
  }

  const filterRange = (val) => {
    const newItems = Data.filter((newval) => newval.precio_minimo < (val))    
    setItems(newItems)     
  }

  useEffect(()=>{    
    Aos.init({duration:2000})
  },[])

  return (
    <>
    <Home 
        filterItems = {filterItems}
        filterRange = {filterRange}        
      />
    <section className='main container section'>
      <div className='secTitle'>
        <h3 data-aos='fade-right' className='title'>
          Hoteles más visitados
        </h3>

      </div>
      
      <Card item = {item} />
      
    </section>
    </>
    
  )
}

export default Main