import React, { Component } from 'react';
import Banner from './components/Banner/Banner';
import Formation from './components/Formations/Formations';
import Projet from './components/Projets/Projets';
import About from './components/About/About';
import Contact from './components/Contact/Contact';
import Layout from './components/Layout/Layout';
class App extends Component {

  
  render () {

  
  
    return (
       
       <div>
        <Layout>
          <Banner/>
          <About/>
          <Projet/>
          <Formation/>
          <Contact/>
        </Layout>
      </div>
    )
  }
}

export default App;
