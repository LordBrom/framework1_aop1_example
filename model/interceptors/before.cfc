<cfcomponent accessors="true" output="false" hint="" >

	<cffunction name="init" access="public" returntype="before" output="false" hint="">

		<cfset variables.compID = right(createUUID(), 6) />

		<cfreturn this />
	</cffunction>



	<cffunction name="before" access="public" returntype="void" output="false" hint="">
		<cfargument name="targetBean" type="any" />
		<cfargument name="methodName" type="string" />
		<cfargument name="args"       type="struct" />

		<cfset arguments.args.aryTracker.append( { before = "#timeFormat(now(), 'ss.l')#", id = variables.compID }) />

	</cffunction>

</cfcomponent>
