const base = {
    get() {
        return {
            url : "http://localhost:8080/springboothhrtol2t/",
            name: "springboothhrtol2t",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springboothhrtol2t/front/dist/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "基于Spring Boot+Vue的校友录管理系统的设计与实现"
        } 
    }
}
export default base
