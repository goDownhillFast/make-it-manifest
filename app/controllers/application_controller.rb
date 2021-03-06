class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method  :content_partial, :lds_org_pics

  def content_partial
    @content_partial || "layouts/basic_layout"
  end

  def lds_org_pics
    [
        { :src =>  "book-of-mormon/christ-appears-to-the-nephites-39663", :alt =>  ""},
        { :src =>  "book-of-mormon/the-liahona-39640", :alt =>  "The Liahona"},
        { :src =>  "book-of-mormon/lehi-people-arrive-promised-land-39644", :alt =>  "Lehi and His People Arrive in the Promised Land"},
        { :src =>  "book-of-mormon/enoch-praying-39648", :alt =>  "Enos Praying"},
        { :src =>  "book-of-mormon/mormon-abridging-the-plates-39649", :alt =>  "Mormon Abridging the Plates"},
        { :src =>  "book-of-mormon/alma-baptizing-people-39653", :alt =>  "Alma Baptizes in the Waters of Mormon"},
        { :src =>  "book-of-mormon/anti-nephi-lehies-bury-weapons-39657", :alt =>  "The Anti-Nephi-Lehies Burying Their Swords"},
        { :src =>  "book-of-mormon/christ-teaching-nephites-39665", :alt =>  "Jesus Teaching in the Western Hemisphere"},
        { :src =>  "book-of-mormon/christ-blesses-the-nephite-children-39667", :alt =>  "Jesus Healing the Nephites"},
        { :src =>  "book-of-mormon/brother-of-jared-seeing-finger-of-lord-39668", :alt =>  "The Brother of Jared Sees the Finger of the Lord"},
        { :src =>  "book-of-mormon/moroni-buries-plates-39672", :alt =>  "Moroni Hides the Plates in the Hill Cumorah"},
        { :src =>  "book-of-mormon/christ-calls-nephite-apostles-39677", :alt =>  "Christ with Three Nephite Disciples"},
        { :src =>  "book-of-mormon/behold-your-little-ones-149404", :alt =>  "Jesus Blesses the Nephite Children"},
        { :src =>  "book-of-mormon/christ-land-bountiful-174607", :alt =>  "Christ in the Land Bountiful"},
        { :src =>  "book-of-mormon/christ-blessing-nephite-children-451708", :alt =>  "Jesus Christ blessing the Nephite children"},
        { :src =>  "book-of-mormon/christ-and-the-nephite-children-83422", :alt =>  ""},
        { :src =>  "new-testament/shepherds-see-new-star-39535", :alt =>  "The Announcement of Christ's Birth to the Shepherds"},
        { :src =>  "new-testament/mary-and-joseph-travel-to-bethlehem-39537", :alt =>  "Joseph and Mary Travel to Bethlehem"},
        { :src =>  "new-testament/boy-jesus-in-the-temple-39538", :alt =>  "Boy Jesus in the Temple"},
        { :src =>  "new-testament/carpenters-son-39540", :alt =>  "Childhood of Jesus Christ"},
        { :src =>  "new-testament/john-baptizes-christ-39544", :alt =>  "John the Baptist Baptizing Jesus"},
        { :src =>  "new-testament/calling-the-fishermen-39547", :alt =>  "Calling of the Fishermen "},
        { :src =>  "new-testament/christ-ordaining-the-apostles-39549", :alt =>  "Christ Ordaining the Apostles"},
        { :src =>  "new-testament/christ-teaching-the-people-39554", :alt =>  "Sermon on the Mount"},
        { :src =>  "new-testament/christ-healing-the-blind-man-39555", :alt =>  "Christ Healing a Blind Man"},
        { :src =>  "new-testament/jesus-calms-the-storm-39557", :alt =>  "Jesus Calms the Storm"},
        { :src =>  "new-testament/go-ye-therefore-and-teach-all-nations-39610", :alt =>  "Go Ye Therefore and Teach All Nations"},
        { :src =>  "new-testament/the-ascension-of-jesus-39614", :alt =>  "The Ascension of Jesus"},
        { :src =>  "new-testament/jesus-at-the-door-39617", :alt =>  "Jesus at the Door"},
        { :src =>  "new-testament/the-second-coming-39618", :alt =>  "The Second Coming"},
        { :src =>  "new-testament/the-second-coming-39621", :alt =>  "The Second Coming"},
        { :src =>  "new-testament/jesus-christ-39623", :alt =>  "Jesus the Christ"},
        { :src =>  "new-testament/the-annunciation-gabriel-mary-39627", :alt =>  "The Annunciation:  The Angel Gabriel Appears to Mary"},
        { :src =>  "new-testament/jesus-walking-on-water-129516", :alt =>  "Jesus Walking on the Water"},
        { :src =>  "new-testament/jesus-last-supper-82803", :alt =>  "The Last Supper"},
        { :src =>  "new-testament/stoning-of-stephen-360158", :alt =>  "The Stoning of Stephen"},
        { :src =>  "new-testament/mary-joseph-nativity-art-lds-191342", :alt =>  "The Road to Bethlehem"},
        { :src =>  "new-testament/angel-appears-to-shepherds-603730", :alt =>  "The Announcement of Christ's Birth to the Shepherds"},
        { :src =>  "new-testament/ten-lepers-christ-healed-tissot-39577", :alt =>  "Christ Healing the Ten Lepers"},
        { :src =>  "new-testament/christ-rich-young-ruler-hofmann-1020802", :alt =>  "Christ and the Rich Young Ruler"},
        { :src =>  "new-testament/jesus-christ-feed-my-sheep-83279", :alt =>  "Jesus Christ instructs Apostles to 'Feed My Sheep'"},
        { :src =>  "new-testament/christ-doctors-temple-art-lds-710197", :alt =>  "Boy Jesus in the Temple"},
        { :src =>  "new-testament/lost-lamb-art-lds-425852", :alt =>  ""},
        { :src =>  "new-testament/simeon-mary-joseph-greg-olsen-243715", :alt =>  "Simeon Reverencing the Christ Child"},
        { :src =>  "new-testament/jesus-healing-the-blind-bloch-634622", :alt =>  ""},
        { :src =>  "new-testament/christ-and-samaritan-woman-bloch-634623", :alt =>  ""},
        { :src =>  "new-testament/jesus-sermon-mount-634632", :alt =>  ""},
        { :src =>  "new-testament/jesus-birth-nativity-634637", :alt =>  ""},
        { :src =>  "new-testament/the-last-supper-carl-bloch-634699", :alt =>  ""},
        { :src =>  "new-testament/jesus-raising-lazurus-634865", :alt =>  ""},
        { :src =>  "new-testament/mary-with-boy-jesus-dewey-327093", :alt =>  "Jesus Praying with His Mother "},
        { :src =>  "new-testament/living-water-jesus-christ-610290", :alt =>  "Jesus and the Samaritan Woman"},
        { :src =>  "new-testament/pool-of-bethesda-carl-bloch-83121", :alt =>  "Christ Healing the Sick at Bethesda"}
    ]
  end
  
end
