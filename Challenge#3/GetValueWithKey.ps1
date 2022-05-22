function GetValue($object, [String[]]$keys)
{
   $nodename = $keys[0]
   if($keys.Count.Equals(1))
   {
    return $object.$nodename
   }
   else
   {
    return GetValue -object $object.$nodevalue -key {$keys | Select-Object -Skip 1)
   }
  }
  
  
 #Sample Object and key as per the problem statement 
 #object = {“a”:{“b”:{“c”:”d”}}}
 #key = a/b/c
