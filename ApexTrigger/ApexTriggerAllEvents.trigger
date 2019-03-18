/**
 * @author: {{ author }}
 */
trigger {{ api_name }} on {{ object_name }} (
    before insert
	, before update
	, before delete
	, after insert
	, after update
	, after delete
	, after undelete) {

    //new {{ trigger_handler_name }}().run();

}
