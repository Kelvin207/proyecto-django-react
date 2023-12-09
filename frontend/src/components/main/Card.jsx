import React from 'react'
import {HiOutlineLocationMarker} from 'react-icons/hi' 
import {HiOutlineClipboardCheck} from 'react-icons/hi' 
import { Link } from "react-router-dom";

const Card = ({item, setItems}) => {
  return (
    <div className="secContent grid">
        {
          item.map((val)=>{
            return(
              <div key={val.id} 
                    data-aos='fade-up'
                    className="singleDestination">
                <div className="imageDiv">
                  <img src={val.imagen} alt={val.nombre} />
                </div>

                <div className='cardInfo'>
                  <h4 className='destTitle'>{val.nombre}</h4>
                  <span className="continent flex">
                    <HiOutlineLocationMarker className='icon' />
                    <span className='name'>{val.localizacion}</span>
                  </span>

                  <div className='fees flex'>
                    <div className='grade'>
                      <span>calificación: <small> +{val.calificacion}</small></span>
                    </div>

                    <div className='price'>
                      <h6>S/. {val.precio_minimo}</h6>
                    </div>
                  </div>

                  <div className='desc'>
                    <p>{val.descripcion}</p>
                  </div>

                  <button className='btn flex'>
                    <Link to="reserva">Reservar</Link> 
                    <HiOutlineClipboardCheck className = 'icon'/>
                  </button>

                </div>
                
              </div>
            )

          })
        }

      </div>
  )
}

export default Card