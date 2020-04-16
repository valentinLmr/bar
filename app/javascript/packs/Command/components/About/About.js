import React from 'react'
import Infos from './Infos/Infos'
import Skills from './Skills/Skills'
import style from './About.module.css'



const about = props => (
    <div className={style.AboutContainer} id="About">
        <h2 style={{fontSize:'50px', textAlign:'center', color:'#1C1F29', margin:'80px auto'}}><strong><u>PROFIL</u></strong></h2>
        <div className={style.DivContainer}>
            <Infos/>
            <Skills/>
            
        </div>
    </div>
)

export default about