import React from 'react';
import style from './Projet.module.css'

const projet = props => (
    <div className={style.Projet}
            style={{backgroundImage: `url(${props.image})`, backgroundSize:'cover'}}>
                <a href={props.url}>
                    <div className={style.Hover}>
                        <div style={{
                            padding: '10%'
                            }}>
                            <div style={{height:'20%'}}>
                                <h3><strong>{props.name}</strong></h3>
                            </div>
                            <div className={style.Line}></div>
                            <div style={{height:'80%'}}>
                                <p style={{padding: '20px'}}><strong>{props.content}</strong></p>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
)

export default projet