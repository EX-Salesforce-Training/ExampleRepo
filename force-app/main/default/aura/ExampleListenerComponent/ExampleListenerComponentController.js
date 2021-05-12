({
    myAction : function(component, event, helper) {
        try{
            let msg = event.getParams("message");
        }catch(error){
            let toastEvent = $A.get("e.force:showToast");
            toastEvent.setParams({
                mode:'dismissible',
                title: 'Error!',
                message: error.message()
            });
            toastEvent.fire();
        }finally{

        }
    }
})