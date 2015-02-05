# Morning!

We began this week persisting data with Postgres, then moved to using the PG gem
to dynamically perform CRUD operations to our database. Now we're moving a step
up and putting a layer between our application logic and our database. That
layer is an ORM, an Object Relational Mapper. It translates the values in our
database into objects.

#### Questions

Read the following [article](http://en.wikipedia.org/wiki/Active_record_pattern) then pair up with a partner and be sure you're both able to answer the following questions:

- What is the Active Record pattern?
- What do tables map to? - class
- What do column names map to? - ????accessor methods/properties???
- What do rows map to? object instance
- What is an ORM? object-relational mapping
- How are foreign key relationships exposed? an object instance of the approperiate type via a property


### Thought Experiment!

> After you've answered the above questions work with your partner and imagine
how the following SQL would translate into Ruby following an ActiveRecord pattern.

```sql
CREATE TABLE users (
    id serial PRIMARY KEY,
    login varchar NOT NULL,
    email varchar NOT NULL UNIQUE
);

CREATE TABLE bookmarks (
    id serial PRIMARY KEY,
    url text DEFAULT "",
    user_id integer REFERENCES users(id)
);
```

- What would the table map to in Ruby?
class users
class bookmarks
- What would a row map to?
instance in a table
mike = USERS.new("hammer74", "MCcool322@aol.com")
- How might you access values from the rows?
mike.login
- How might you access values from the foreign key relationships?
user.bookmark should return an array
same as select * from bookmarks where user_id = 1

column names become properties for each instance in ruby

class Users

  def initialize(login, email)

  end

  mike = users.new

end



class Bookmarks

  def initialize(url, user_id)
    @url =
    @user_id = users

  end
end

















