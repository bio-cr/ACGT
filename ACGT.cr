require "colorize"

def nucleotide_color(s)
  s.each_char do |c|
    c = case c
        when 'A'
          "A".colorize.on(:green)
        when 'C'
          "C".colorize.on(:yellow)
        when 'G'
          "G".colorize.on(:red)
        when 'T'
          "T".colorize.on(:blue)
        else
          c
        end
    print(c)
  end
end

while l = ARGF.gets(nil)
   print nucleotide_color(l)
end

