import React, {Component} from 'react';
import {File} from '../routes';
import { connect } from 'react-redux';
import Header from '../components/header';
import Axios from 'axios';
import update from 'react-addons-update';

class Menu extends Component {
    
    render() {
        return (
            <div>
                <Header></Header>
            </div>
        )
    }
}

export default connect(null, null)(Menu);