import React, { Component } from 'react';
import Skill from './Skill/Skill';
import style from './Skills.module.css'

class Skills extends Component{

    states = {
        skills:{
            Ruby:{
                percentage: 75
            },
            MySQL:{
                percentage: 75
            },
            Rails:{
                percentage: 80
            },
            HTML:{
                percentage: 90
            },
            CSS:{
                percentage: 80
            },
            JS_ES6:{
                percentage: 75
            },
            React:{
                percentage: 70
            },
            Redux:{
                percentage: 65
            }
        }
    }
    render () {
       
        const skillsArray = []

        const skillsState = {
            ...this.states.skills
        }
        
        for (let key in skillsState){ 
            skillsArray.push({
                name: key,
                percentage: this.states.skills[key].percentage
            })
        }

        const skills = skillsArray.map(skill => {
           return  (   

                        <Skill 
                        key={skill.name}
                        percentage={skill.percentage}
                        name={skill.name}/>
           )
        })

            
        return (
            <div className={style.SkillComponent}>
                <ul className={style.SkillList}>
                    {skills}
                </ul>
            </div>

        )
    }
}

export default Skills;

