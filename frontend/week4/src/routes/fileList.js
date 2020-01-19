import React, {Component} from 'react';
import Axios from 'axios';
import update from 'react-addons-update';
import { ShowSubjectFileList } from '../components';

console.log('fileList');
class FileList extends Component {

    state = {
        fileList : []
    }

    componentDidMount() {
        this.getFileList();
    }

    getFileList() {
        const subject = this.props.subject;

        return Axios.post('/routes/fileList/getfileSubject', {subject})
        .then(res => {
            console.log(res.data.data);
            const data = res.data.data;
            data.map(item => {
                this.setState({
                    fileList : update(
                        this.state.fileList, {
                            $push : [{
                                filename : item.filename,
                                subject : item.subject
                            }]
                        })
                })
            })
            
        })
    }

    render() {
        console.log(this.state.fileList);
        return (
            <div>
                <ShowSubjectFileList list = {this.state.fileList} />
            </div>
        )
    }
}

export default FileList;