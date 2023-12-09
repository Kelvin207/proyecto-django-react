import { API_URL } from "../lib/Enviroments";

export const getReserva = async() => {    
    const response = await fetch(`${API_URL}/reserva`)
    console.log(response)    
    const data = await response.json()    
    return {data}
}