({
	ShowAndTell : function(component) {
		let bool = component.get("v.tralse");
        let name = component.get("v.Hello");
        
        let method = component.get("c.Maybe");
        method.setParams({testValue : name});
        method.setCallback(this, function(response){
            if(response.getState() == "SUCCESS"){
                component.set("v.tralse", response.getReturnValue());
            }
        })
        $A.enqueueAction(method);
        
	}
})