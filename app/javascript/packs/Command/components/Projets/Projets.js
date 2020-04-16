import React, { Component } from 'react'
import style from './Projets.module.css'
import budgety from '../../assets/Images/Budgety.png'
import forkify from '../../assets/Images/Forkify.png'
import mypark from '../../assets/Images/Mypark.png'
import sharemyplan from '../../assets/Images/Sharemyplan.png'
import Project from './Projet/Projet';
class Projets extends Component {

    state = {
        projects:{
            BUDGETY:{
                img: budgety,
                url: "https://budgtily.herokuapp.com/",
                content:"Permet de gérer ton budget mensuel de facon intuitive. Ajoute tes revenus ou tes dépenses et check ton budget par mois afin d'optimiser tes économies"
            },
            FORKIFY:{
                img: forkify,
                url: "https://fork-ify.netlify.com/",
                content:" Site de recettes entièrement codé en Javascript ES6. Permet de trouver des recettes parmi plus de mille d'après le Scrap d'une API. Selectionne, ajuste le nombre de personnes afin d'adapter les proportions des ingredients"
            },
            SHAREMYPLAN:{
                img: sharemyplan,
                url: "https://share-my-plan.herokuapp.com/",
                content:"Solution de partage des abonnements afin de réduire le coût des services les plus demandés.(Netflix, Spotify, Canal+, Amazon Prime ..). RoR, HTML, CSS, JS, Ajax, Active Record"
            },
            MYPARK:{
                img: mypark,
                url: 'https://we-park.herokuapp.com/',
                content:" De loueur à locataire notre application permet de trouver une place dans les grandes metropoles francaises selon plusieurs critères (Prix, Espace, Géocalisation)"
            },
        }
    }
    render() {

        const projectsArray = []

        const projectsState = {
            ...this.state.projects
        }
        
        for (let key in projectsState){ 
            projectsArray.push({
                name: key,
                image: this.state.projects[key].img,
                url: this.state.projects[key].url,
                content: this.state.projects[key].content
            })
        }

        const project = projectsArray.map(project => {
           return  (   
            <Project 
            key={project.name}
            name={project.name}
            image={project.image}
            url={project.url}
            content={project.content}/>
           )
        })

        return(

            <div className={style.ProjetsContainers} id="Projet">
                <div style={{margin: '9vh 0'}}>
                    <h2 style={{fontSize:'50px'}}><strong><u>PROJETS</u></strong></h2>
                    <p style={{fontSize:'12px'}}><i>Cliquez pour visiter</i></p>
                </div>
                
                <div className= {style.Projets}>
                    {project}
                </div>
            </div>
           
        )
    }
} 

export default Projets

 // <div class="image_holder">
    //     <a class="portfodivo_link_for_touch" href="https://www.mh-deco.fr/portfolio_page/amenagement-maison-individuelle-en-location-la-jarrie-17/" target="_self">
    //         <span class="image">
    //             <img width="960" height="720" src="https://www.mh-deco.fr/wp-content/uploads/2020/03/mh-deco-la-rochelle-interieur-la-jarrie.png" class="attachment-full size-full wp-post-image" alt="Aménagement d'une maison individuelle à La Jarrie par MH DECO La Rochelle" srcset="https://www.mh-deco.fr/wp-content/uploads/2020/03/mh-deco-la-rochelle-interieur-la-jarrie.png 960w, https://www.mh-deco.fr/wp-content/uploads/2020/03/mh-deco-la-rochelle-interieur-la-jarrie-300x225.png 300w, https://www.mh-deco.fr/wp-content/uploads/2020/03/mh-deco-la-rochelle-interieur-la-jarrie-768x576.png 768w" sizes="(max-width: 960px) 100vw, 960px"/>
    //         </span>
    //     </a>
        
    //     <span class="text_holder">
    //         <span class="text_outer">
    //             <span class="text_inner">
    //                 <div class="hover_feature_holder_title">
    //                     <div class="hover_feature_holder_title_inner">
    //                         <h3 class="portfolio_title">
    //                             <a href="https://www.mh-deco.fr/portfolio_page/amenagement-maison-individuelle-en-location-la-jarrie-17/">Aménagement d’une maison individuelle en location – La Jarrie (17)</a>
    //                         </h3>
    //                         <span class="separator"></span>
    //                         <span class="project_category">Nathalie Bouroumeau, Nouvelle Aquitaine, Projet 3D</span>
    //                     </div>
    //                 </div>
    //                 <span class="feature_holder">
    //                     <span class="feature_holder_icons">
    //                         <a class="lightbox" title="Aménagement d’une maison individuelle en location – La Jarrie (17)" href="https://www.mh-deco.fr/wp-content/uploads/2020/03/mh-deco-la-rochelle-interieur-la-jarrie.png" data-rel="prettyPhoto[pretty_photo_gallery]" rel="prettyPhoto[pretty_photo_gallery]">
    //                             <i class="fa fa-search fa-2x"></i>
    //                         </a>
    //                         <a class="preview" href="https://www.mh-deco.fr/portfolio_page/amenagement-maison-individuelle-en-location-la-jarrie-17/">
    //                             <i class="fa fa-link fa-2x"></i>
    //                         </a>
    //                     </span>
    //                 </span> 
    //             </span>
    //         </span>
    //     </span>
    // </div>