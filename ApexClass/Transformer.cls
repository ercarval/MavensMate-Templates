/**
 * @author: {{ author }} - TOPi
 */
public class {{ api_name }} {

    EventQueue event;

    public {{ api_name }} () {
        this.event = new EventBuilder().buildEvent();
    }

    public {{ api_name }} (EventQueue event) {
        this.event = event;
    }

    // create your transfomer method here
    /**
     * example:
     * public List<Account> toAccount ( List<SapAccountInfo> customers ) {
     * }
     * public List<SapAccountInfo> toSapAccounts ( List<Account> accounts ) {
     * }
     */

}
