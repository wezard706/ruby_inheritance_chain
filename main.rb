class Foo
end

# 継承もincludeもしていない場合
puts "Foo.ancestors #{Foo.ancestors}" # Foo.ancestors [Foo, Object, Kernel, BasicObject]


class Parent
end

module Included
end

class Child < Parent
  include Included 
end

# 継承とincludeをした場合
puts "Child.ancestors #{Child.ancestors}" # Child.ancestors [Child, Included, Parent, Object, Kernel, BasicObject]
