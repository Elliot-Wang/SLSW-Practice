// something is false
if(0, nil,"0 is false" println)
if("", nil,"empty string is false" println)
if(nil, nil,"nil is false" println)
if(false, false,"false is false" println)

// assign operators difference
something := Object clone
something slot_1 := "a slot"

//test
myDog := Object clone
myDog name := "rover"
myDog sit := method("I'm sitting\n" print)