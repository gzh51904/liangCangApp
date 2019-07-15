exports.formData = ({data=[],code=1000,msg="success"}={})=>{
    if(code === 250){
        msg = 'fail';
    }
    return {
        code,
        data,
        msg
    }
}