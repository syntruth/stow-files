# Add some Kernel methods
module Kernel
  private

  def set_do_not_defer!
    Kernel.const_set :DO_NOT_DEFER, true
  end

  def unset_do_not_defer!
    Kernel.const_set :DO_NOT_DEFER, false
  end

  # From: https://github.com/cldwalker/tux/issues/3
  def reload!
    exec $PROGRAM_NAME, *ARGV
  end

  def clear
    system 'clear'
  end

  def reset!
    clear && reload!
  end

  def rgb2int(hex)
    [((hex >> 16) & 255), ((hex >> 8) & 255), (hex & 255)]
  end

  def int2rgb(rgb)
    (rgb[0] << 16) | (rgb[1] << 8) | rgb[2]
  end

  def me
    return unless User

    User.find('rcarnahan')
  end

  def set_id2_to(klass, num)
    if defined? MongoMapper
      s = MongomapperId2::Incrementor[klass.name]

      s.set num
    elsif defined? Mongoid
      s = Mongoid.default_client.database['sequences']

      s.find_one_and_update({ seq_name: klass.name }, :$set => { number: num })
    else
      puts 'MongoDB lib not found.'
    end
  end
end

# This is a general module to add useful methods during command line usage.
module UsefulCLIMethods
  # Return only the methods not present on basic objects
  def interesting_methods
    (methods - Object.instance_methods).sort
  end
end

Object.include UsefulCLIMethods
