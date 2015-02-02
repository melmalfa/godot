# Teach Yourself Firebase

### Part 1: What is Firebase?

Answer the following questions:

1. What is Firebase?
It is a service. Also a library that allow you to use Firebase.
  + What is the company? Acquired by Google in 10/14. Was a startup, evolved from the startup Envolve. Google bought: owns open-source angular.js, which needs database osting to work.
  + What is the technology? Real-time cloud database. Used as an API.


1. Why would someone use it; what is it for? Used for developers to store and sync data across multiple clients in real-time. Primary product is a real-time database. Example: group chat on Big Brother.Real-time backend service.
offers storage, transfer, and synchronization. Offers a restful api- uses websockets, not http. It is a persistent ftore.
1. What technologies does it replace?
Merges data storage and data transfer into a single system. No longer two seperate things, instead it's just synchronizing data.
  + What are the pros/cons of using it versus a competing technology?
  Competes with having your own database. Database services.
  Simplifies application development.
Competing Technologies
Data store
Services: Parse, MS server, (lis), (evolve)

Data Storage:redis, couch, postgres, mysql, oracle,mSQL
(here we control our own data)

WHAT"S A "PRO" to FIREBASE?
-scalable
-synchronization
-simplicity (dont have to administer or create it)

WHat's A "CON" to FIREBASE?
-we must develop indexes manually(no built-in indices)
-high switching calls
-get locked in financially
-data . . . . nodes
-there is no data validation

Like redis, it is a key, value store, so can't wrtie rules on the backend to enforce data integrity.

Firebase technology is structred around a key, value store. So will only work with the kind of data that fit this structre. Ex. fb can't use because needs a map structure.

Firebase is a service, but it's also technology. It isn't giving you a choice of how to structure your database- it IS a database.


1. How do you use it?
write the library into our code.
  + Where do you start when using it?

p.s. redis is a database. It is the server we connect to, the library we use to connect with it, and on the server is a key-value store (hash).

***Do not go on. We will answer the above questions as a class first!***

Don't look at other people's code before writing your own.
---

### Part 2: Begin Using Firebase

Sign up for [the service][firebase], if you haven't yet. Then log in.

Answer the following questions:

1. What did you get with your sign up?
1. What are the possible tools you can use to learn Firebase?


### Part 3: Do the [Tutorial][firebase-tutorial]!

When you are finished, answer the following questions. Remember: **don't just
_do_ the tutorial!** You are trying to learn this technology: play around and
explore within the framework of the tutorial. Test what you are doing *along the
way*!

Firebase lists use chronologically-ordered, globally-unique IDs as the keys for items.

Every piece of data is assigned it's own unique url

unique googlygoop is a key that has a key value pair

All JSON

1. What happens when you call `Firebase#set`?
Firebase.set() writes data to Firebase to a set path. Creates or changes data to this path. Stores values as events to a specific location.
  + Is there a difference between passing `Firebase#set` a `String`
    or an `Object` as a parameter?
    If so, what is it? If not, why not?

to write an object:
myDataRef.set({name: name, text: text});
myDataRef.set('User ' + name + ' says ' + text);

1. How is our "Firebase" structured?
Firebase is structured like a JSON object (like javascript)
excatly as a json object
each information is a set into a child of a parent
Parents and childs, keys and values. data is inverted by listing ids as keys - index

1. What is the general rule for how data can be represented in our "Firebase"? That is, what data type(s) does it hold? JSON

1. What is the difference between `Firebase#set` and `Firebase#push`?
Push is a helper function to create a list. It adds something new to the data that already exist.
Adds an item to a list.
Set Updates the value of a key that already exists. Overwrites the value includin all of its children

1. What does `Firebase#push` return?

1. What does `Firebase#on` do?
A callback method that takes two arguments: event type and callback function.
Have we seen this sort of function before?
EventListeners from jQuery.

1. What are the event types that Firebase offers us
Value, - like a snapshot, shows everything
child_added,
child_changed,
child_removed,
child_moved.

Set can
a child is another word for a key value pair-, * its relaionship to it's two parents

value is also claled when you load your page
1. What is the purpose of a callback for a `child_added` function?
Callbacks read data. A snapshot of just the new value - the newly updated data. There is no difference between initial and new data.

   + Is there more than one purposefor the callback function? there is more than one purpose for a child_added event. Retrieves all info when you start your page, and then from then on tells when new things added.

   + What data is passed to the callback?

   set is equals/assigns


1. Do you have the word *undefined* showing up in your chat log? If so, why?
sending back every child of a refence
1. What happens if more than one of you uses the same URL Firebase data
  reference?

***Do not go on. We will answer the above questions as a class first!***

---

### Part 4: Beyond the Demo Code

1. Change the demo code to include an HTML `input` for the ID of the `Firebase`,
   and set it by default to your own from your demo.
1. Rewrite the script to dynamically link to a `Firebase` based on the contents
   of the `input`. Use the provided code for examples!
1. Link to one another's `Firebase`s and chat!

<!-- Links -->

[firebase]:          https://www.firebase.com/
[firebase-tutorial]: https://www.firebase.com/tutorial/#gettingstarted
