window.addEventListener('DOMContentLoaded', ()=>{
    const replaceText = (selector, text)=>{
        const element = document.getElementById(selector)
        if(element) element.innerText = text
    }
    console.log('------------', process.versions.node)
    for(const type of ['chrome','node', 'electron']){
        replaceText(`${type}-version`, process.versions[type])
    }
})