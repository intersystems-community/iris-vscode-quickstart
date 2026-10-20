Class VSCodeQuickstart.Greeter Extends %RegisteredObject
{

ClassMethod Greet(name As %String = "World") As %String
{
    set message = "Hello, "_name_"!"
    return message
}

ClassMethod Run()
{
    set greeting = ..Greet("IRIS")
    write greeting, !
    set ^VSCodeQuickstart.LastGreeting = greeting
    set ^VSCodeQuickstart.RunCompleted = $ZDT($H, 3)
    quit
}

}
