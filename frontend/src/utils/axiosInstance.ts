import axios from "axios";
import {store} from "@/store";

// Axios Interceptor Instance
const AxiosInstance = axios.create({
    baseURL: process.env.BASE_URL
});

AxiosInstance.defaults.withCredentials = true;

AxiosInstance.interceptors.request.use(
    (config) => {

        // const jwtToken = localStorage.getItem("token");

        config.headers["Content-Type"] = 'application/json';
        config.headers.Accept = 'application/json';

        config.withCredentials = true;

        // If token is present, add it to request's Authorization Header
        // if (jwtToken) {
        //     if (config.headers) config.headers.Authorization = `Bearer ${jwtToken}`;

         // Remove trailing slash from URL
         if (config.url && config.url.endsWith('/')) {
            config.url = config.url.slice(0, -1);
        }

        // Remove trailing slash from baseURL
        if (config.baseURL && config.baseURL.endsWith('/')) {
            config.baseURL = config.baseURL.slice(0, -1);
        }
        // }

        return config;
    },
);

// AxiosInstance.interceptors.response.use(
//     (response) => {
//         return response
//     },
//     (error) => {
//         console.log('errrrrrrrrrrrrrr', error.statusCode);
//         return error
//     }
// )

export default AxiosInstance