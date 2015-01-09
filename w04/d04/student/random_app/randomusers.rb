require 'json'
require 'pry'

# results = '{"results":[{"user":{"gender":"male","name":{"title":"mr","first":"michael","last":"wallace"},"location":{"street":"4773 w sherman dr","city":"nampa","state":"alabama","zip":"75019"},"email":"michael.wallace92@example.com","username":"ticklishdog500","password":"all4one","salt":"dj5DG8r0","md5":"cbfb3190ae5bf4d2f49dec7250dda40c","sha1":"e51e6662503b32ff26c00894fd6197eba507e267","sha256":"248cad73136cef25086f1f73e8488a6d5b43f3c3525e1e81158c18f3435dc327","registered":"1398543938","dob":"343757442","phone":"(658)-929-4855","cell":"(879)-164-7721","SSN":"604-97-1755","picture":{"large":"http://api.randomuser.me/portraits/men/6.jpg","medium":"http://api.randomuser.me/portraits/med/men/6.jpg","thumbnail":"http://api.randomuser.me/portraits/thumb/men/6.jpg"},"version":"0.4.1"},"seed":"8ed68d960f2b6722"}]}'

# my_hash = JSON.parse(results)

# name = my_hash["results"][0]["user"]["name"]
# fname = name["first"]
# lname = name["last"]


# $stdout.puts my_hash["results"][0]["user"]["name"]["first"]

# $stdout.puts "#{fname} #{lname}"

ten_female_info = '{"results":[{"user":{"gender":"female","name":{"title":"mrs","first":"penny","last":"murray"},"location":{"street":"1403 woodland st","city":"forney","state":"delaware","zip":"86385"},"email":"penny.murray59@example.com","username":"orangesnake873","password":"pepper1","salt":"nY50QCr9","md5":"7b438d0a8fe5671029dd4210f43848af","sha1":"a4800d6fb47adbf12d12a3fdbd793840dcd55353","sha256":"ef524e378b1ef0243f099d30ba0ee6c07cab4113f7023fc74489f1792d702cdb","registered":"1259241640","dob":"161013239","phone":"(802)-483-5799","cell":"(654)-809-7270","SSN":"750-13-1060","picture":{"large":"http://api.randomuser.me/portraits/women/87.jpg","medium":"http://api.randomuser.me/portraits/med/women/87.jpg","thumbnail":"http://api.randomuser.me/portraits/thumb/women/87.jpg"},"version":"0.4.1"},"seed":"9b95a1681d58894d"},{"user":{"gender":"female","name":{"title":"mrs","first":"edna","last":"wallace"},"location":{"street":"7224 w dallas st","city":"eugene","state":"minnesota","zip":"42126"},"email":"edna.wallace99@example.com","username":"greenladybug228","password":"kinky","salt":"wuExTTsm","md5":"b3cc29c4526884c71ed5f7c885006da9","sha1":"9aab3a3ee56a200474a22945adee9ae226a23af8","sha256":"88c6c1d5de6eb81558d068bd5d35f8bb47d6e250af07008b002f6baeb1de9b9d","registered":"923788361","dob":"156685969","phone":"(140)-122-4639","cell":"(640)-635-9806","SSN":"113-11-8541","picture":{"large":"http://api.randomuser.me/portraits/women/68.jpg","medium":"http://api.randomuser.me/portraits/med/women/68.jpg","thumbnail":"http://api.randomuser.me/portraits/thumb/women/68.jpg"},"version":"0.4.1"},"seed":"35c927b585eeb3cd"},{"user":{"gender":"female","name":{"title":"miss","first":"nicole","last":"duncan"},"location":{"street":"2240 w gray st","city":"york","state":"minnesota","zip":"82673"},"email":"nicole.duncan58@example.com","username":"crazymeercat464","password":"franklin","salt":"xXsxWo14","md5":"14d25fe8e5405f8c941e7c2d203b25fc","sha1":"0f799aecd2d7127db6390e130d8717be8cb737f5","sha256":"0a187372962da780a606fb951b296a43f9de553d4bf48c15de7c5f20cd7d3a57","registered":"1252788094","dob":"428953607","phone":"(107)-144-6844","cell":"(699)-632-5819","SSN":"751-40-2077","picture":{"large":"http://api.randomuser.me/portraits/women/87.jpg","medium":"http://api.randomuser.me/portraits/med/women/87.jpg","thumbnail":"http://api.randomuser.me/portraits/thumb/women/87.jpg"},"version":"0.4.1"},"seed":"3ed07b15586af4fd"},{"user":{"gender":"female","name":{"title":"mrs","first":"charlene","last":"ray"},"location":{"street":"2891 adams st","city":"grapevine","state":"pennsylvania","zip":"24451"},"email":"charlene.ray69@example.com","username":"ticklishbear75","password":"storm","salt":"Qxlnw2dw","md5":"d9ac3fbfa9833a9ea0c8914e14d795ea","sha1":"0fdfc3431d167cba663dd0c7e7b884e80afe7520","sha256":"f69fa1aed858a98c0d45a72cb4625b827b7728c63d4d24ade05c9433cd5736c6","registered":"923924450","dob":"143359786","phone":"(173)-282-1022","cell":"(957)-208-7289","SSN":"184-16-9710","picture":{"large":"http://api.randomuser.me/portraits/women/84.jpg","medium":"http://api.randomuser.me/portraits/med/women/84.jpg","thumbnail":"http://api.randomuser.me/portraits/thumb/women/84.jpg"},"version":"0.4.1"},"seed":"83bf60d219a1d89a"},{"user":{"gender":"female","name":{"title":"ms","first":"deann","last":"thomas"},"location":{"street":"7799 marsh ln","city":"stockton","state":"louisiana","zip":"69900"},"email":"deann.thomas99@example.com","username":"orangebutterfly601","password":"cowboys","salt":"u4CPvngG","md5":"8a380de34e90041dfbca308ced4bc6f8","sha1":"986223a3ce8daa3f0426f3dc67453bb22df49894","sha256":"1ea110d2dcb4828f7395caee392ddc12314e93b13f29a5ed3d1b32b8a182f997","registered":"1158851644","dob":"225966107","phone":"(492)-781-7664","cell":"(433)-749-6537","SSN":"318-60-1122","picture":{"large":"http://api.randomuser.me/portraits/women/93.jpg","medium":"http://api.randomuser.me/portraits/med/women/93.jpg","thumbnail":"http://api.randomuser.me/portraits/thumb/women/93.jpg"},"version":"0.4.1"},"seed":"9c675a53bd415f4b"},{"user":{"gender":"female","name":{"title":"mrs","first":"abigail","last":"scott"},"location":{"street":"1389 mockingbird hill","city":"the colony","state":"new mexico","zip":"69870"},"email":"abigail.scott23@example.com","username":"bigpeacock909","password":"cars","salt":"9I9Vp9EU","md5":"f4a0279cdf417ceee0e6ef1232fc99c3","sha1":"a43b388aa3ca06a3d04229e53cfa8f41975e7595","sha256":"e44eccb375192af48905eee388d42399af9ecdce6bfc1fa5ea8428deab7e5352","registered":"1169142969","dob":"191449298","phone":"(106)-100-2691","cell":"(989)-338-6231","SSN":"396-85-7896","picture":{"large":"http://api.randomuser.me/portraits/women/84.jpg","medium":"http://api.randomuser.me/portraits/med/women/84.jpg","thumbnail":"http://api.randomuser.me/portraits/thumb/women/84.jpg"},"version":"0.4.1"},"seed":"9ca9bb4aaad1930e"},{"user":{"gender":"female","name":{"title":"mrs","first":"mildred","last":"nelson"},"location":{"street":"1665 e pecan st","city":"modesto","state":"kentucky","zip":"31968"},"email":"mildred.nelson49@example.com","username":"beautifulbear149","password":"store","salt":"CCajjsfz","md5":"0a1f9529953363e910de233a20a66a26","sha1":"1dd8c8207b91406e78f012c4e5c50e9075a6b839","sha256":"5666998ac8c67c00dbd885f7eacae7ff31f5f060485efdf152e1c9f96212a830","registered":"949250602","dob":"307717628","phone":"(406)-546-5541","cell":"(531)-575-5845","SSN":"753-21-5878","picture":{"large":"http://api.randomuser.me/portraits/women/46.jpg","medium":"http://api.randomuser.me/portraits/med/women/46.jpg","thumbnail":"http://api.randomuser.me/portraits/thumb/women/46.jpg"},"version":"0.4.1"},"seed":"2ad499c5f73f2351"},{"user":{"gender":"female","name":{"title":"miss","first":"peggy","last":"gray"},"location":{"street":"6868 ash dr","city":"scurry","state":"montana","zip":"67150"},"email":"peggy.gray26@example.com","username":"bigtiger706","password":"gaymen","salt":"sYaPm6Of","md5":"76faeb122f7c67eb2bf4b41a8ef8c759","sha1":"129ae10712aa3f35a6fc38228f2a9a0207a5553b","sha256":"d2923237074775f4692fe20188edc754b5c99441deed1321a9d80fca0b1382a1","registered":"981630526","dob":"449886242","phone":"(156)-464-8289","cell":"(683)-179-2364","SSN":"750-23-8204","picture":{"large":"http://api.randomuser.me/portraits/women/42.jpg","medium":"http://api.randomuser.me/portraits/med/women/42.jpg","thumbnail":"http://api.randomuser.me/portraits/thumb/women/42.jpg"},"version":"0.4.1"},"seed":"85af4834ac1fc74f"},{"user":{"gender":"female","name":{"title":"mrs","first":"savannah","last":"martinez"},"location":{"street":"8043 bruce st","city":"princeton","state":"minnesota","zip":"95272"},"email":"savannah.martinez26@example.com","username":"beautifulswan700","password":"ziggy1","salt":"tRah6UY9","md5":"1ae8ea32dc4ded2cc04726d80a3b00c8","sha1":"d8a5d4abe52a8d50bf965e0b4d5187d597d51f7f","sha256":"f22a030196be70d14b8a30b462833b614cc611849c533790bd0aad5df2162abc","registered":"1018051925","dob":"190472002","phone":"(748)-971-6752","cell":"(783)-418-3311","SSN":"419-27-7988","picture":{"large":"http://api.randomuser.me/portraits/women/41.jpg","medium":"http://api.randomuser.me/portraits/med/women/41.jpg","thumbnail":"http://api.randomuser.me/portraits/thumb/women/41.jpg"},"version":"0.4.1"},"seed":"dbd50d093611e763"},{"user":{"gender":"female","name":{"title":"ms","first":"susan","last":"holt"},"location":{"street":"7282 frances ct","city":"scurry","state":"tennessee","zip":"39747"},"email":"susan.holt59@example.com","username":"blueostrich553","password":"ashton","salt":"Fg0RBc2H","md5":"f9c41b0795da4bbbbf745af6ec792aa0","sha1":"aa536e876106cc89bfcf9c185bc2b525ef3a28ff","sha256":"a7ae3c5e3139333a88a80120db034e206b32b164f35ede898f6610c63b9a83e4","registered":"1366146099","dob":"406443207","phone":"(582)-877-5004","cell":"(740)-258-8954","SSN":"312-95-8409","picture":{"large":"http://api.randomuser.me/portraits/women/94.jpg","medium":"http://api.randomuser.me/portraits/med/women/94.jpg","thumbnail":"http://api.randomuser.me/portraits/thumb/women/94.jpg"},"version":"0.4.1"},"seed":"8b3c4eaee3a0a1b1"}]}'

female_hash_maybe = JSON.parse(ten_female_info)

female_hash_maybe["results"].map do |result|
  try = result["user"]["picture"]["thumbnail"]
  $stdout.puts(try)
end



# female_hash_maybe["results"].map do |result|
#   name_hash = result["user"]["name"]
#   name_hash["first"] + " " + name_hash["last"]
# end

# require 'httparty'
# response = HTTParty.get("http://api.randomuser.me/?results=10&gender=female")
# ten_female_names = response["results"].map do |result|
#   name = result["user"]["name"]
#   name["first"] + " " + name["last"]
# end

# require 'httparty'
# response = HTTParty.get("http://api.randomuser.me/?results=5&gender=male")
# five_male_thumbnails = response["results"].map do |result|
#   result["user"]
# end




# ten_female_first_and_lastnames = []

# five_male_thumbnails = []
