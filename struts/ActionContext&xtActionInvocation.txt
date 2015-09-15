ThreadLocal: ThreadLocal class enables us to create variables local to a thread and can't be accessed by other thread.this is useful when a common object is shared between multiple threads
and if we want some field to be local to a thread,we can use ThreadLocal class.


The ActionContext is a container of objects in which action is executed. 
The values stored in the ActionContext are unique per thread (i.e. ThreadLocal). So we don't need to make our action thread safe

The ActionContext contains all of the data that makes up the context in which an
action occurs. This includes the ValueStack but also includes stuff the framework
itself will use internally, such as the request, session, and application maps from the
Servlet API.

Struts 2 creates ActionContext for each request and each request has its own thread. thus ActionContext is unique for each request.
ActionContext has a static method called getContext which returns the current ActionContext object.


ActionInvocation : the execute() of method is not executed directly,it is executed after some interceptors are executed.thus the framework creates an object called an ActionInvocation that
encapsulates the action and all of the interceptors that have been configured to fire before and after that action executes. Actioninvocation is an interface,so by actioninterface object,
we mean a object of class that implemented Actioninvocation and its done by framework.

object of ActionInvocation has a ActionContext field which is threadlocal.

we cant get reference to Actioninvocation diectly as we dont know whcih class has implemeted it.We can get it by ActionContext.getContext().getActionInvocation().
 

the servlet rendered by jsp is not encapsulated in ActionInvocation. for every request,new object of ActionInvocation is created,but not for jsp.