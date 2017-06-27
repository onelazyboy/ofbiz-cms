<#assign extInfo = parameters.extInfo?default("N")>
<#assign inventoryItemId = parameters.inventoryItemId?default("")>
<#assign serialNumber = parameters.serialNumber?default("")>
<#assign softIdentifier = parameters.softIdentifier?default("")>
<#assign sortField = parameters.sortField?if_exists/>
<#assign hideFields = parameters.hideFields?default("N")>
<#-- Only allow the search fields to be hidden when we have some results -->


<form method="post" name="lookupparty" action="" class="form-inline" id="lookupparty">
    <input type="hidden" name="lookupFlag" value="Y"/>
    <input type="hidden" name="hideFields" value="Y"/>

    <div class="form-group">
        <input type="text" name="">ewrwerwer
    </div>
</form>