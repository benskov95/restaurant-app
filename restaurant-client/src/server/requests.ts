export default function makeRequest(method: string) {
    const opts = {
        method: method,
        headers: {
            "Content-type": "application/json",
            Accept: "application/json",
        },
    };
    return opts;
}