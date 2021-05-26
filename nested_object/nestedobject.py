
def nested_search(object, key):

    object = object.replace("{","")
    object = object.replace("}","")
    object = object.replace('“',"")
    object = object.replace('”',"")
    object = object.replace(':',"/")
    #print(object)
    #print(key)

    if object.startswith(key):
        return object.replace(key+"/","")
    else: 
        return "Not Found"

object = "{“a”:{“b”:{“c”:”d”}}}"
key = "a/b/c"

print(nested_search(object, key))

object = "{“x”:{“y”:{“z”:”a”}}}"
key = "x/y/z"

print(nested_search(object, key))


