import { API_URL } from "../lib/Enviroments";

export const getAllHotel = async() => {    
    const response = await fetch(`${API_URL}/hotel`)    
    const data = await response.json()    
    return {data}
}

export const getHotel = async() => {    
    const response = await fetch(`${API_URL}/hotel`)    
    const data = await response.json()    
    return {data}
}