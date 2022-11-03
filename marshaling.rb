class SoonToBeBinaryObject
  def initialize(obj_type='type')
    @obj_type = obj_type
  end
end

obj = SoonToBeBinaryObject.new
File.open("obj", 'wb') {|f| f.write(Marshal.dump(obj))}

loaded = Marshal.load(File.binread("obj"))
puts loaded