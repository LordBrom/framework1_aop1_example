<cfcomponent extends="framework.one" output="false" >
	<cfset this.applicationTimeout = createTimeSpan(0, 2, 0, 0) />
	<cfset this.setClientCookies = true />
	<cfset this.sessionManagement = true />
	<cfset this.sessionTimeout = createTimeSpan(0, 0, 30, 0) />

	<!--- FW/1 settings --->
	<cfset variables.framework = {
		action = 'action',
		defaultSection = 'main',
		defaultItem = 'default',
		generateSES = false,
		SESOmitIndex = false,
		diEngine = "aop1",
		diComponent = "framework.aop",
		diLocations = "model, controllers",
		reloadApplicationOnEveryRequest = true,
        diConfig = {
        	omitDirectoryAliases = false,
        	interceptors = [
				{beanName = "customerService", interceptorName = "changeLogInterceptor"   },
				{beanName = "productService",  interceptorName = "changeLogInterceptor" }
			]
		},
        routes = [ ]
	} />

	<cffunction name="setupSession"  access="public" returntype="void" output="false" hint="">
	</cffunction>

	<cffunction name="setupRequest"  access="public" returntype="void" output="false" hint="">
	</cffunction>

	<cffunction name="setupView"     access="public" returntype="void" output="false" hint="">
	</cffunction>

	<cffunction name="setupResponse" access="public" returntype="void" output="false" hint="">
	</cffunction>

	<cffunction name="onMissingView" access="public" returntype="string" output="false" hint="">
		<cfreturn "Error 404 - Page not found." />
	</cffunction>

	<cffunction name="onError" access="public" returntype="void" output="false" hint="">
		<cfdump var="#arguments#" abort="true" />
	</cffunction>
</cfcomponent>
