/**
 * @author: {{ author }} - TOPi
 */
global virtual class {{ api_name }} implements Schedulable {

    public {{ api_name }}() {
    }

    global void execute(SchedulableContext ctx) {

        execute();

        abortJob();

        reScheduleJob();

    }

    public void execute () {
        // do something.
    }

    public static void start() {
        new {{ api_name }}().reScheduleJob();
    }

    public static void abort() {
        new {{ api_name }}().abortJob();
    }

    global void reScheduleJob() {
        new ScheduleHelper().scheduleIntoNextMinutes( new {{ api_name }}(), {{ interval_in_minutes }});
    }

    global void abortJob() {
        new ScheduleHelper().abort('{{ api_name }}');
    }

}
