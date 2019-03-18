/**
 * @author: {{ author }}
 */
@RestResource(urlMapping='/{{ url }}')
global with sharing class {{ api_name }}  {


    @HttpGet
    global static {{ returnType }} show() {

        {{ returnType }} obj;

        return obj;

    }

    @HttpPost
    global static {{ object_name }} create() {

        {{ object_name }} obj;

        return obj;

    }

    @HttpPut
    global static {{ object_name }} updateObject() {

        {{ object_name }} obj;

        return obj;

    }

    @HttpDelete
    global static void remove() {

    }

}
