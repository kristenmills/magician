# Require all of mathmagic's stuff
lib_path = File.join(File.dirname(__FILE__), 'mathmagic')
require File.join(lib_path, 'array_extensions')
require File.join(lib_path, 'integer_extensions')
require File.join(lib_path, 'math_extensions')
require File.join(lib_path, 'shortcuts')
Array.send(:include, ArrayExtensions)
Integer.send(:include, IntegerExtensions)
Math.send(:include, MathExtensions)
