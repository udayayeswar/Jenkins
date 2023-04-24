def call() {
    env.APPTYPE = "nodejs"
    node (env.RUNNER){
        common.codeCheckout()

    }


}