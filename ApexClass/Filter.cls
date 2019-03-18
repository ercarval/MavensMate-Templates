/**
 * @see Filter
 * @author: {{ author }}
 */
public class {{ api_name }} extends Filter {

    public static Map<String, Account> index{{ object_type }}ById (List<{{ object_type }}> records) {

        Map<String, {{ object_type }}> indexedRecords = new Map<String, {{ object_type }}>();

        for ( {{ object_type }} record : records ) {
            indexedRecords.put (record.Id, record);
        }

        return indexedRecords;

    }


}
