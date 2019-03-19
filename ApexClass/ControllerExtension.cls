/**
 * @author: {{ author }} - TOPi
 */
public with sharing class {{ api_name }} {

    public final {{ object_type }} {{ object_attribute_name }} {get;set;}

    public {{ api_name }} (ApexPages.StandardController stdController) {
        this.{{ object_attribute_name }} = ({{ object_type }}) stdController.getRecord();
    }

    public String getRecordName() {
        return 'Hello ' + {{ object_attribute_name }}.name + ' (' +  {{ object_attribute_name }}.Id + ')';
    }
}
