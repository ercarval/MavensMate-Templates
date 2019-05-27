/**
 * @see Filter
 * @author: {{ author }} - TOPi
 */
public class {{ api_name }} extends Filter {

    public static Map<String, {{ object_type }}> index{{ object_name }}ById (List<{{ object_type }}> records) {

        Map<String, {{ object_type }}> indexedRecords = new Map<String, {{ object_type }}>();

        for ( {{ object_type }} record : records ) {
            indexedRecords.put (record.Id, record);
        }

        return indexedRecords;

    }

    public static Map<String, {{ object_type }}> index{{ object_name }}ByName (List<{{ object_type }}> records) {

        Map<String, {{ object_type }}> indexedRecords = new Map<String, {{ object_type }}>();

        for ( {{ object_type }} record : records ) {
            indexedRecords.put (record.Name, record);
        }

        return indexedRecords;

    }
    

}
