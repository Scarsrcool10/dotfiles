if defined?(PryNav) || defined?(PryByebug)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
end

Pry::Commands.create_command('clear', 'clear the screen', :shellwords => false) do
  def process
    system 'clear'
  end
end

def own_methods(object)
  (object.methods - Object.methods).sort
end