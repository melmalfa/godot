## Part 1

# Good morning! I found the format of this incredibly confusing. I'm not sure what else I was supposed to do besides troll webpages for resources/guidance, and that was incredibly frustrating, so I probably didn't get the point of this. Giving up per usual. I think it would be more helpful for me to go over some tutorial or something per your reccommendations.

1. I don't remember. And trying to search for basic definitions for beginners is like looking for a needle in a haystack of complicated messes- I don't even realize the site I'm on is way over my head until I'm already in.
2. IWhat is `Server`? DK.
3. Sinatra is a 'DSL'- a domain specific language. In this case the domai is web applications. It is middleware between a server and ruby, It is a gem that runs on top of rack.
4. Base refers to the modular type of Sinatra we are choosing to run (rather than plain linear Sinatra).
5. Enable is a method.
6. GET is the most common HTTP method, saying "give me this resouce.""
7. I don't know what the three inputs of get are. The route- or where to 'get' from ('/' - the root url of the application). The code block (what will be rendered on the page).
8. The webpage.


      logger.error "We have an error."

      # 9.  What is `logger`?
                                             # 10. What is `error`?
                                             # 11. Where does `logger` print to?
                                             # 12. How is the logger print out
                                             #     different from $stderr?
9. I assume it is an object that .error acts on. IDK.
10.
11.The terminal?
12.$stderr prints to the webpage and logger prints beind the scenes. IDK



      logger.info  "Made to: #{request.url}" # 13. What is the difference btwn
                                             #     `logger.error` and
                                             #     `logger.info`?
                                             # 14. What is `request`?
                                             # 15. What does `request`
                                             #     represent?
                                             # 16. What is `url`?
14.
15.
16. url stands for uniform resouce locator. A web address.






      status 200                  # 17. What is `status`?
                                  # 18. What is `status` called on; ie, where
                                  #     are we?
                                  # 19. What does 200 represent?
17. An HTTP response status code.
18.
19. Success/Ok

      # Test the below with the two requests:
      #   - curl http://localhost:3000?key=value
      #   - curl http://localhost:3000

      if request.params.length != 0
      # 20. What is `params`?
                                            # 21. What does `params` return?
                                            # 22. What does it represent?
20. Params refers to parameters. Part of route patterns.
21.
22.


        body "The request's params were: '#{request.params}'.\n"

                                            # 23. What is `body`?
                                            # 24. What does it represent?
23.
24.

      else
        "Empty request params\n"            # 25. Why don't we call `body` here?
      end
    end
  end
end
```

1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.

## Part 2

```ruby
require 'sinatra/base'      # 1.  What is the purpose of this line?
                            # 2.  What does 'sinatra/base' refer to?
                            # 3.  Where is 'sinatra/base'?
require_relative './server' # 4.  Why are we using `require_relative`?
                            # 5.  What does './server' refer to?
                            # 6.  What type of path is './server'?
run AppName::Server         # 7.  What is `run`?
                            # 8.  What is `AppName::Server`?
                            # 9.  Where did `AppName::Server` come from?
                            # 10. Where did `run` come from?
```

1.
1.
1.
1.
1.
1.
1.
1.
1.
1.

## Bonus

```bash
rackup -p 3000 # 1.  What is `rackup`?
               # 2.  What does the -p 3000 mean?
               # 3.  Are there other options than -p?
               # 4.  Where does `rackup` come from (what Gem does it come with)?
               # 5.  What is the code for `rackup`?
               #     (hint: `sudo find ~ -iname "rackup"`)
               # 6.  What does `#!/usr/bin/env ruby` mean?
```

1.
1.
1.
1.
1.
1.
