require 'pry'

ARGF.each do |line|

    # # 1
    # match = /fred/

    # # 2
    # match = /[Ff]red/

    # # 3
    # match = /\.+/

    # # 4
    # match = /([A-Z])([a-z])/

    

    if ( line =~ match )
      puts line
    end
end

# binding.pry
