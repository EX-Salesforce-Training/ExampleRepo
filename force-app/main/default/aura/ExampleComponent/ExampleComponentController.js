({
    myAction : function(component, event, helper) {
        let CompEvent = component.getEvent("ComponentEvent");
        CompEvent.setParams({"message":"Component event fired!"})
        CompEvent.fire();
        let AppEvent = component.getEvent("ApplicationEvent");
        AppEvent.setParams({"message":"Application event fired!"})
        AppEvent.fire();
        let exampleToast = $A.get("e.force:showToast");
        exampleToast.setParams({"message":"Toasty!"});
        exampleToast.fire();
    }
})