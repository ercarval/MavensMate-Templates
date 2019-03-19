/**
 * @author: {{ author }} - TOPi
 */
public virtual class {{ api_name }} extends AbstractUpdateableOutboundCommand {

    {{ payload_type }} {{ payload_type_attribute_name }};

    {{ response_type }} {{ response_type_attribute_name }}

    {{ transformer_type }} transformer;

    {{ repository_type }} repository;

    public {{ api_name }}() {
        this.repository = new {{ repository_type }();
    }

    override
    public void init (EventQueue event) {
        super.init (event);
        transformer = new {{ transformer_type }} (event);
    }

    virtual
    public {{ payload_type }} getPayload() {
        return ({{ payload_type }})
               JSON.deserialize( this.event.getPayload(), {{ payload_type }}.class );
    }

    override
    public Object transformToSend () {

        // See Transformar implementation for more details.
        // return transformer.toRequestInfo ( getPayload() );

        return null; // replace this.
    }

    override
    public void deserializeResult(Object responseObject) {
        this. {{ response_type_attribute_name }} = ({{ response_type }})
                            JSON.deserialize( (String) responseObject, {{ response_type }}.class);
    }

    override
    public void postUpdateExecute() {

        // apply your logic here to update salesforce objects with service response.

    }

    //4 test injection
    public void setRepository ({{ repository_type }} repository) {
        this.repository = repository;
    }

}
