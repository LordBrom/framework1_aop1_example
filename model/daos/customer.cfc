<cfcomponent accessors="true" output="false" hint="" >

	<cffunction name="init" access="public" returntype="customer" output="false" hint="constructor">

		<cfreturn this />
	</cffunction>


	<cffunction name="doThisOtherThing" access="public" returntype="array" output="false" hint="constructor">
		<cfargument name="aryTracker" type="array" required="true" />

		<cfset arguments.aryTracker.append({inner = "#timeFormat(now(), 'ss.l')#" }) />

		<cfreturn arguments.aryTracker />
	</cffunction>


	<cffunction name="test" access="public" returntype="boolean" output="false" hint="constructor">
		<cfreturn true />
	</cffunction>




</cfcomponent>
