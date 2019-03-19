/**
 * @author: {{ author }} - TOPi
 */
global class {{ api_name }} implements Database.Batchable<sObject> {

	String query;

	global {{ api_name }}() {

	}

	global Database.QueryLocator start(Database.BatchableContext context) {
		return Database.getQueryLocator(query);
	}

   	global void execute(Database.BatchableContext context, List<sObject> scope) {

	}

	global void finish(Database.BatchableContext context) {

	}

}
