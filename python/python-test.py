from typing import Dict, Any
 
class Foo:
   _items: Dict[str, Any] = {}
 
   def set_item(self, key: str, value: Any) -> None:
       for k, v in self._items.items():
           if k == key:
               raise KeyError
       self._items[key] = value
 
   def get_item(self, existing_key: str) -> Any:
       return self._items[existing_key]
 
   def del_item(self, existing_key: str) -> bool:
       del self._items[existing_key]
       return True
 
   def get_items(self) -> Dict[str, Any]:
       return self._items
 
 
first = Foo()
second = Foo()
 
first.set_item("foo", 1)
first.set_item("bar", 2)
 
second.set_item("foo", 2)
 
third = Foo(3, "fdfsfs")
 
print(first.get_items())
print(second.get_items())
print(third.get_items())