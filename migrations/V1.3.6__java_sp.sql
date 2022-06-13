USE SCHEMA myapp;

CREATE OR REPLACE PROCEDURE hello2(nm STRING)
RETURNS STRING
LANGUAGE JAVA
RUNTIME_VERSION = '11'
PACKAGES = ('com.snowflake:snowpark:latest')
HANDLER = 'MyClass.myMethod'
AS
$$
  import com.snowflake.snowpark_java.*;

    public class MyClass
  {
    public String myMethod(Session session, String nm)
    {
      return "Hello " + nm;
    }
  }
$$;