import React, { Component } from 'react';
import styles from './Layout.module.css'
import Navbar from '../Navbar/Navbar'
import SideDrawer from '../Navbar/SideDrawer/SideDrawer'

class Layout extends Component {

    state = {
        showSideDrawer: false
    }

    sideDrawerClose = () => {
        this.setState({showSideDrawer: false})
    }

    sideDrawerOpen = () => {
        this.setState({showSideDrawer: true})
        console.log('this is done')
    }

    render () {
        return (
        <div>
            <Navbar 
                clicked={this.sideDrawerOpen}/> 
            <SideDrawer
            closed={this.sideDrawerClose}
            show={this.state.showSideDrawer}
            />
            <main className={styles.content}>
                {this.props.children}
            </main>
        </div>
        )
    }
}


export default Layout;