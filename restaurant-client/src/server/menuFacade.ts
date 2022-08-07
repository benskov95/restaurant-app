import makeRequest from "./requests";

const menuFacade = () => {
    const getMenuItems = async () => {
        const response = await fetch(process.env.VUE_APP_API_URL, makeRequest("GET"));
        const result = response.ok ? response.json() : Promise.reject(response.json());
        return result;
    }

    return {
        getMenuItems
    }
}

const facade = menuFacade();
export default facade;