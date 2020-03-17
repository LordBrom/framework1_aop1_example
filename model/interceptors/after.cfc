<cfcomponent accessors="true" output="false" hint="" >

	<cffunction name="init" access="public" returntype="after" output="false" hint="">

		<cfset variables.compID = right(createUUID(), 6) />

		<cfreturn this />
	</cffunction>

	<cffunction name="after" access="public" returntype="any" output="false" hint="">
		<cfargument name="targetBean" type="any" />
		<cfargument name="methodName" type="string" />
		<cfargument name="args"       type="struct" />
		<cfargument name="result"     type="any" />

		<cfreturn arguments.result.append( { after = "#timeFormat(now(), 'ss.l')#", id = variables.compID }) />
	</cffunction>

</cfcomponent>
