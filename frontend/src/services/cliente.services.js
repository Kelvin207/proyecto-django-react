import { API_URL } from "../lib/Enviroments";

export const getCliente = async() => {    
    const response = await fetch(`${API_URL}/cliente`)       
    const data = await response.json()    
    return {data}
}