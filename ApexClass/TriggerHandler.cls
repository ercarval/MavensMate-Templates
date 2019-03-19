/**
 * @author: {{ author }} - TOPi
 */
public with sharing class {{ api_name }} extends TriggerHandler {

    //private static Map<String, RecordType> recordTypes;

    private List<{{ objectApiName }}> new{{ objectNamePlural }};

    private Map<Id, {{ objectApiName }}> old{{ objectNamePlural }};

    //static {
    //    loadRecordTypes();
    //}

    public {{ api_name }}() {
        this((List<{{ objectApiName }}>) Trigger.new, (Map<Id, {{ objectApiName }}>) Trigger.oldMap);
    }

    //4 test injection
    public {{ api_name }}(List<{{ objectApiName }}> new{{ objectNamePlural }} , Map<Id, {{ objectApiName }}> old{{ objectNamePlural }}) {
        this.new{{ objectNamePlural }} = new{{ objectNamePlural }};
        this.old{{ objectNamePlural }} = old{{ objectNamePlural }};

        // initialize others services like a Filters and Enrichers
    }

    //public static void loadRecordTypes() {
    //    if (recordTypes == null || recordTypes.isEmpty()) {
    //        recordTypes = new RecordTypeFilterHelper().indexByDeveloperName(new RecordTypeRepository().findByObject('Account'));
    //    }
    //}

    //override
    //public void beforeInsert() {
    //}

    //override
    //public void beforeUpdate() {
    //}

    //override
    //public void afterInsert() {
    //}

    //override
    //public void afterUpdate() {
    //}

}
