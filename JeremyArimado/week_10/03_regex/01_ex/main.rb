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

    # # 5
    # match = /([^\s])\1/

    # # 6
    # match = /($[Ff][Rr][Ee]$[Dd]|[Dd]\s)|($[Ww][Ii][Ll][Mm]$[Aa])/

    # # 6
    # match = /((fred|wilma)(?=(fred|wilma)))/



    if ( line =~ match )
      puts line
    end
end

# binding.pry
