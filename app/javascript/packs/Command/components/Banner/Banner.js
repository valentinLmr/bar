import React from 'react';
import styles from './Banner.module.css'
import bannerImage from '../../assets/Images/Banner.jpg';
const banner = props => (
    <div className={styles.Banner} style={{backgroundImage: `url(${bannerImage})`, backgroundSize:'cover', backgroundPosition:'center'}}>
    </div>
)

export default banner