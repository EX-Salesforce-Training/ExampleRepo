<aura:application extends="force:slds">
    <div class="slds-grid slds-wrap slds-gutters_x-large slds-grid_vertical slds-grid_vertical-align-center">
        <div class="slds-col slds-size_1-of-2 slds-order_3" style="background-color:#D3D3D3">
            <c:Hello Hello="Bob"/>
        </div>
        <div class="slds-col slds-size_1-of-2 slds-order_3" style="background-color:#D3D3D3">
            <c:Hello Hello="Dillon" tralse="false"/>
        </div>
        <div class="slds-col slds-size_1-of-2 slds-order_5">
            <c:Hello Hello="Bob"/>
        </div>
        <div class="slds-col slds-size_1-of-2 slds-order_5">
            <c:Hello Hello="Ross" tralse="true"/>
        </div>
        <div class="slds-col slds-size_1-of-2 slds-order_2" style="background-color:#D3D3D3">
            <c:Hello Hello="Bob"/>
        </div>
        <div class="slds-col slds-size_1-of-2 slds-order_2" style="background-color:#D3D3D3">
            <c:Hello Hello="Dole" tralse="false"/>
        </div>
        <div class="slds-col slds-size_1-of-2 slds-order_1">
            <c:Hello Hello="Bob"/>
        </div>
        <div class="slds-col slds-size_1-of-2 slds-order_1">
            <c:Hello Hello="Marley" tralse="false"/>
        </div>
        <div class="slds-col slds-size_1-of-2 slds-order_4" style="background-color:#D3D3D3">
            <c:Hello Hello="Bob"/>
        </div>
        <div class="slds-col slds-size_1-of-2 slds-order_4" style="background-color:#D3D3D3">
            <c:Hello Hello="Belcher" tralse="false"/>
        </div>
    </div>
</aura:application>