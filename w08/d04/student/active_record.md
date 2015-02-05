# Hello!

Pair up with a partner and read [Parts 1 through 4](http://guides.rubyonrails.org/active_record_basics.html
) on ActiveRecord Basics from The Rails Guides.

Be sure you're both able to answer the following questions:

mvp- Model, View, Controller - this is the map part

- Define Convention over Configuration-
as long as we follow these rules, we won't have to keep rewriting code. default way. so it is standard convention.

**These questions will be on the assessment tomorrow**

- What naming conventions does ActiveRecord follow?
tables should be pluralized
class with two or more names = CLasses = SingularCamelCase
table name - table_pluralized_snakes
foreign key - singularized_table_name_id

by default: By default, Active Record will use an integer column named id as the table's primary key.

- What optional columns will ActiveRecord use if they're on a table?
created_at - Automatically gets set to the current date and time when the record is first created.
updated_at - Automatically gets set to the current date and time whenever the record is updated.
lock_version - Adds optimistic locking to a model.
type - Specifies that the model uses Single Table Inheritance.
(association_name)_type -
(table_name)_count - Used to cache the number of belonging objects on associations. For example, a comments_count column in a Articles class that has many instances of Comment will cache the number of existent comments for each article.

- How do you create an ActiveRecord model?
class Product < ActiveRecord::Base
end

Given the following sql

```sql
CREATE TABLE space_craft (  --> change to space_crafts
    id serial PRIMARY KEY,
    type varchar, --> cannot use type as a word
    capacity varchar
    piloted_by integer REFERENCES person(id)  --> change to person_id
);


CREATE TABLE person (  --> change to persons or people
    id serial PRIMARY KEY,
    born_on date
);
```

1. How would you update the schema to allow ActiveRecord to automatically record when a row is updated or created?


1. How could you rename the tables and rows to better follow ActiveRecords naming conventions?
1. How would you create two ActiveRecord models based on the tables?
