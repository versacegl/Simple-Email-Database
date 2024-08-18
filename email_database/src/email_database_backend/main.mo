import Map "mo:base/HashMap";
import Text "mo:base/Text";

actor {

// init types with a custom name
  type Name = Text;
  type Email = Text;

  type Entry = {
    email: Email;
    secondary_email:Text;
  };

  // Here we are using Map.Hashmap to store our data
  let EmailBook = Map.HashMap<Name, Entry>(0, Text.equal, Text.hash);

  public func add(name : Name, entry : Entry): async () {
    EmailBook.put(name, entry);
  };

  public query func peep(name : Name) : async ?Entry {
    EmailBook.get(name)
  };
};