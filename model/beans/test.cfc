<cfcomponent accessors="true" output="false" hint="" >
	<cfproperty name="componentID" />

	<cffunction name="init" access="public" returntype="test" output="false" hint="constructor">
		<cfset setComponentID(createUUID()) />

		<cfreturn this />
	</cffunction>




</cfcomponent>
