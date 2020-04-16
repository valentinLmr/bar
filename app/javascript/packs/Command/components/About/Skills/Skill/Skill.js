// import React from 'react';
// import { CircularProgressbar, buildStyles } from 'react-circular-progressbar';
// import ChangingProgressProvider from './ChangingProgressProvider'
// import 'react-circular-progressbar/dist/styles.css';
// import styles from './Skill.module.css';

import React from 'react';
import style from './Competence.module.css'



const skill = props => {
    const percentage = props.percentage - 15 ;
    return (


          <div className={style.ContainerComp}>
              <div className={style.NameComp}>
                  <p>{props.name}</p>
              </div>
              <div className={style.PercentageComp} style={{width:`${percentage}%`}}>
                  
              </div>
              <div className={style.RestPercentage} style={{width:`${85 - percentage }%`}}>
              <p><i>{props.percentage}%</i></p>
              </div>
      
          </div>
) 
        }
export default skill