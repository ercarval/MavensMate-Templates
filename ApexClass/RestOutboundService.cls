/**
 * @author: {{ author }} - TOPi
 */
public virtual class {{ api_name }} extends AbstractRestOutboundService {

    public {{ api_name }}() {
    }

    /**
    // implements your method here wrapping send or get method
    public {{ response_type }} {{ operation_name }} ( <some args> ) {

        setup (buildEvent ( <some args> ));

        {{ response_type }} respose;

        // transform to send use Transformer for complex implementations
        Map<String, String> request = new Map<String, String> {'numeroPontoVenda' => pointOfSale };

        try {

            respose = ( {{ response_type }}) processResult ( send (request) );

        } catch (Exception e) {
            event.errorProcessingEvent(e);
        } finally {
            event.save();
        }

        return respose;

    }
    **/

    override
    public Object processResult( String response ) {
        return JSON.deserialize( response , {{ response_type }}.class );
    }

    /*
    // build event
    public EventQueue buildEvent (<some args>) {
        return new EventBuilder().createOutboundEventFor ('{{ event_name }}')
               .withSameDocumentNumberForAllIdentifiers(pointOfSale)
               .withStatus('SUCCESS')
               .buildEvent();
    }
    */

}
