import React from 'react';
import style from './Info.module.css';

const info = props => (
    <div className={style.Info}>
        <div className={style.InfoContainer}>
            <i className={props.img}></i>
        </div>
        <h4>{props.name}</h4>
    </div>
)

export default info