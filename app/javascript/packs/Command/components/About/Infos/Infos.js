import React, { Component } from 'react';
import styles from './Infos.module.css';
import profil from '../../../assets/Images/valou.jpg';
import Info from './Info/Info'

class Infos extends Component {
    states= {
        infos:{
            Curieux:{
                image: "fas fa-search"
            },
            Creatif:{
                image: "fas fa-lightbulb"
            },
            Investit:{
                image: "fas fa-bolt"
            },
            Professionnel:{
                image: "fas fa-briefcase"
            },
            Passionné:{
                image: "fas fa-heart"
            } 
        }
    }
    render () {

        const infosArray = []

        const infosState = {
            ...this.states.infos
        }
        
        for (let key in infosState){ 
            infosArray.push({
                name: key,
                image: this.states.infos[key].image
            })
        }

        const infos = infosArray.map(info => {
           return  (   

                        <Info 
                        key={info.name}
                        img={info.image}
                        name={info.name}/>
           )
        })
        return (
            <div className={styles.InfosContainer}>
                <div>
                    <img style={{width:'200px', height:'200px', borderRadius:'50%'}}src={profil} alt='profil'/>
                    <div style={{ width:'100%', height: 'auto', margin: '20px auto'}}>
                        <p style={{fontSize: '21px', justifyContent:'center', color: 'rgb(29, 32, 41)'}}><strong><i>"Valentin Lemaire, passionné de Développement d'Applications Web et Mobile"</i></strong></p>
                    </div>
                    <div className={styles.Infos}>
                        {infos}
                    </div>
                </div>
            </div>
        )
    }
}


export default Infos