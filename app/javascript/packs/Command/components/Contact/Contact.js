import React from 'react'
import style from './Contact.module.css'

const contact = props => (
    <div className={style.ContactContainer} id="Contact">
        <h2><strong><u>CONTACT</u></strong></h2>
        <div className={style.Contact}>
            <p>Contactez moi au <strong>06.40.44.46.07</strong> ou par mail à <strong>valentinlmr28@gmail.com</strong></p>
            <div className={style.ListReseau}>
                <p>Vous pouvez également me retrouver sur les sites suivants !</p>
                <div style={{display:'flex', justifyContent:'center'}}>
                    <a href="https://github.com/valentinLmr"><i class="fab fa-github-square"></i></a>
                    <a href="https://www.linkedin.com/in/valentin-lemaire-1b080b153/"><i class="fab fa-linkedin"></i></a>
                </div>
            </div>
        </div>
    </div>
)

export default contact