<cfcomponent accessors="true" output="false" hint="">

	<cfproperty name="fw" />
	<cfproperty name="beanFactory" />

	<cfproperty name="testBean" />
	<cfproperty name="customerService" />
	<!--- <cfproperty name="customerDao" /> --->
	<cfproperty name="productService" />

	<cffunction name="init" access="public" returntype="main" output="false" hint="constructor">
		<cfreturn this />
	</cffunction>

	<cffunction name="before" access="public" returntype="void" output="false" hint="">
	</cffunction>

	<cffunction name="after" access="public" returntype="void" output="false" hint="">
	</cffunction>

	<cffunction name="default" access="public" returntype="void" output="false" hint="">
		<cfargument name="rc" type="struct" required="true" />

			<!--- <cfdump var="#getCustomerDao().doThisOtherThing(aryTracker = [{ passIn = "#timeFormat(now(), 'ss.l')#" }])#" abort="false" /> --->
			<cfdump var="#getCustomerService().doThisAlso(aryTracker = [{ passIn = "#timeFormat(now(), 'ss.l')#" }])#" abort="false" />
			<cfdump var="#getProductService().doThis(aryTracker = [{ passIn = "#timeFormat(now(), 'ss.l')#" }])#" abort="true" />

	</cffunction>

</cfcomponent>
