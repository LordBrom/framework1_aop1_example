<cfcomponent accessors="true" output="false" hint="" >

	<cffunction name="init" access="public" returntype="changeLog" output="false" hint="">

		<cfset variables.compID = right(createUUID(), 6) />

		<cfreturn this />
	</cffunction>

	<cffunction name="before" access="public" returntype="void" output="false" hint="">
		<cfargument name="targetBean" type="any" />
		<cfargument name="methodName" type="string" />
		<cfargument name="args"       type="struct" />

		<cfset variables.methodName = arguments.methodName />

		<cfset arguments.args.aryTracker.append( { beforeCL = "#timeFormat(now(), 'ss.l')#", id = variables.compID }) />

	</cffunction>

	<cffunction name="after" access="public" returntype="any" output="false" hint="">
		<cfargument name="targetBean" type="any" />
		<cfargument name="methodName" type="string" />
		<cfargument name="args"       type="struct" />
		<cfargument name="result"     type="any" />

		<cfreturn arguments.result.append( { afterCL = "#timeFormat(now(), 'ss.l')#", id = variables.compID, method = variables.methodName }) />
	</cffunction>
</cfcomponent>
