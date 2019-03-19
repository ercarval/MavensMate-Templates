/**
 * @author: {{ author }} - TOPi
 */
@isTest
public class {{ api_name }} {

    public static {{ object_name }} new{{ entity_name }}(String name) {
        return new {{ object_name }} (
                   Name = name);
    }

    public static {{ object_name }} create{{ entity_name }}(String name) {
        return createAccount ( new{{ entity_name }} (name));
    }

    public static {{ object_name }} create{{ entity_name }} ({{ object_name }} entity) {
        insert entity;
        return entity;
    }

}
