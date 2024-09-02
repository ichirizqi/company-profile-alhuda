module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      fontFamily: {
        'inter': ['Inter', 'sans-serif'],
        'poppins': ['Poppins', 'sans-serif'],
        'dm-sans': ['DM Sans', 'sans-serif'],
        'montserrat': ['Montserrat', 'sans-serif'],
        'quicksand': ['Quicksand', 'sans-serif'],
        'worksans': ['Work Sans', 'sans-serif']
      },
      colors: {
        'primary-black': '#18191F',
        'primary-white': '#F7F7F7',
        'primary-green': '#00998f',
        'primary-blue': '#C7DEF0',
        'secondary-blue': '#005799',
        'ternary-blue': '#2E75AC',
        'fourth-blue': '#DDF0EF',
        'five-blue': '#03225F',
        'six-blue': '#1E0E62',
        'secondary-green' : '#026C62',
        'ternary-green': '#4DB3AD',
        'primary-tosca': '#5FBBB5',
        'primary-grey': '#EBEAED'
      },
      height: {
        '6px': '6px',
        '188px': '188px',
        '633px': '633px',
        '457px': '457px',
      },
      width: {
        '500px': '500px',
        '445px': '445px',
        '635px': '635px',
        '750px': '750px',
      },
      fontSize: {
        '44px': '44px',
        '40px': '40px'
      },
      borderRadius: {
        '55px': '55px'
      },
      margin: {
        '-500': '-50rem',
        '-600': '-60rem'
      },
      zIndex: {
        '-10': '-10',
        '-20': '-20',
        '-30': '-30',
        '-40': '-40',
        '-50': '-50'
      }
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
