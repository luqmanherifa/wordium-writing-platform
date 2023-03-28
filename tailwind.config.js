/** @type {import('tailwindcss').Config} */
module.exports = {
    content: [
        "./resources/**/*.blade.php",
        "./resources/**/*.js",
        "./resources/**/*.vue",
    ],
    theme: {
        extend: {
            fontFamily: {
                jakarta: ["Plus Jakarta Sans"],
                playfair: ["Playfair Display"],
            },
            colors: {
                silver: "#757575",
                newjeans: "#044FCF",
                smalt: "#033C9D",
            },
        },
    },
    daisyui: {
        darkTheme: "light",
    },
    plugins: [
        require("daisyui"),
        require("prettier-plugin-tailwindcss"),
        require("@tailwindcss/line-clamp"),
    ],
};
