<h1 class="page-header">
	${requestAttributes.header}
	<small>${requestAttributes.pageHeader}</small>
</h1>

<ul class="breadcrumb">
	<#list requestAttributes.funCatalog as funCatalogs>
		<#assign columnValue = funCatalogs.active?default("")>
		<#if columnValue == '1'>
			<li class="active">
				<a href="${funCatalogs.url?if_exists}">
					<strong>${funCatalogs.name}</strong>
				</a>
			</li>
		<#else>
			<li>
				<a href="${funCatalogs.url?if_exists}">
					${funCatalogs.name}
				</a>
			</li>
		</#if>
	</#list>
</ul>






