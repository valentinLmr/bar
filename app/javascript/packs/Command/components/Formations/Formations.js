import React, { Component } from 'react';
import styles from './Formation.module.css';
import pdf from '../../assets/Images/CVDev.pdf';
import pdfIcon from '../../assets/Images/pdfIcon.png';
class Formation extends Component {
    state = {
        formations:{
            BacES:{
                year: 2015,
                school: 'Charlotte Perriand',
                place: 'Genech',
                actif: true,
                description: "Le bac ES est un bac pluridisciplinaire qui m'a apporté de beaucoup de compétences:  Rédactionnelles grâce à l'histoire et la géographie, Logiques grâce aux  mathématiques, Linguistiques grâce aux langues mais également  une ouverture d’esprit sur notre époque et des connaissances sur le monde économique car il porte une attention particulière à l'environnement socio-économique et à l'actualité.",
            },
            DutTC:{
                year: 2017,
                school: 'IUT Valenciennes',
                place: 'Valenciennes',
                description: "Dîplome universitaire des techniques de commercialisations réalisé en alternance. Ces deux années m'ont permis d'approfondir et de développer les compétences acquises lors de mon Bac Economique et Social comme l'ouverture d'esprit grâce à l'introduction du Droit, de la Communication et du Marketing, Rédactionnelles avec des dissertations plus poussées sur notre monde et ses rouages économiques, Logiques grâce à l'algorythmie des mathématiques et de la comptabilité, Sociales et modulables grâce à l'intégration au monde du travail",  
                actif: false
            },
            NCPIF:{
                year: 2018,
                place: 'Lille',
                school: 'EFAB',
                description: "Licence Négociation Conseil en Patrimoine Immobilier et Financier en alternance. L'adaptabilité, la sociabilité et l'organisation ont pris tout leur sens lors de cette 3ème années d'étude supérieure grâce notamment au coté relationnel qui s'est développé et à l' autonomie du metier d'agent immobilier avec les responsibilités relationnelles, professionnelles et personnelles que cela implique.",
                actif: false
            },
            LeWagon:{
                year: 2019,
                place: 'Lille',
                school: 'EuraTechnologie',
                description: "Mes années d'études commerciales et mes voyages, dont un an en Australie, m'ont permis de me rendre compte de la place du web dans le monde actuel et à quel point il était important pour moi d'en faire partie. J' ai donc décidé d'intégrer une formation de 9 semaines d'apprentissage intensif qui m'a permis de développer ma facon de penser au monde de la programmation et de l'informatique, m'apportant des compétences de raisonnement, d'analyse, de compréhension, de recherche, d'abstraction et de conception.  ",
                actif: false
            },
            Autodidacte:{
                year:2020,
                place: null,
                school: 'Udemy, Openclassroom',
                description: 'Formation à travers divers sites en ligne de façon autonome tout en travaillant sur la création de projets. Je suis actuellement disponible pour toutes nouvelles missions',
                actif: false,
            }
        }
    }


    clickedHandler(key) {
        

        const formationData= {
            ...this.state.formations
        };

        for(let key in formationData){
             formationData[key].actif = formationData[key].actif ? false : formationData[key].actif
        };
        console.log(formationData)
 
        const updatedElement = {
            ...formationData[key]
        };
        
        updatedElement.actif = true;
        

        formationData[key] = updatedElement;
        
        this.setState({formations: formationData});
    }

    render () {
            const formationsArray = []

        for (let key in this.state.formations){
            formationsArray.push({
                key: key, 
                name: key,
                year: this.state.formations[key].year,
                place: this.state.formations[key].place,
                school: this.state.formations[key].school,
                description: this.state.formations[key].description
            })
        }
            
            const years = formationsArray.map(formation => {
                const formations = this.state.formations[formation.name]
               return  (
                <h3 
                key={formations.year}
                className={formations.actif ? [styles.Actif, styles.Year].join(' '): styles.Year}
                onClick={() => this.clickedHandler(formation.name)}>
                        {formation.year}
                </h3>
               )
            })

            const description = formationsArray.map(formation => {

                const formations = this.state.formations[formation.name]
             
                return  (
                formations.actif ? 
                <div 
                key={formations}
                className={styles.Description}>
                    
                <h3 style={{fontSize: '24px'}}><strong>{formation.name}</strong> - {formation.school} - {formation.place}</h3>
                    <p
                    style={{fontSize: '21px'}}>{formation.description}</p>
                </div> 
                : null
                )
             })
             

            
        return (
            <div>
                <div onClick={this.descriptionDisplayHandler} id="Formation">
                    <h2 style={{textAlign:'center',
                        margin: '10vh 0',
                        fontSize: '50px',
                        color: '#1C1F29'}}><strong><u>FORMATION</u></strong>
                    </h2>
                    <div 
                    className={styles.Years}>
                        {years}
                    </div>
                    {description}
                </div>
                <div className={styles.Pdf} >
                    <a href={pdf}><img src={pdfIcon} alt='pdf icon' /></a>
                    <p>CV</p>
                </div>
            </div>

        )
    }
}

export default Formation