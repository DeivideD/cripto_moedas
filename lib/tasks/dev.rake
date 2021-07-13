namespace :dev do
  desc "Zera o ambiente e recria"
  task setup: :environment do
    if  Rails.env.development?

      show_spinner("Dropando database ...") do
        %x( rails db:drop )
      end

      show_spinner("Creando database ...") do
       %x( rails db:create)
      end

      show_spinner("Executando migrate ...") do
        %x( rails db:migrate)
      end

      show_spinner("Inserindo registros ...") do
        %x( rails db:seed)
      end
    else
      puts "Task nao pode ser chamado em ambiente de producao"
    end
  end


  def show_spinner(start_message, end_message = "concluido")

    spinner = TTY::Spinner.new("[:spinner] #{ start_message }...")
    spinner.auto_spin # Automatic animation with default interval
    yield
    spinner.success(end_message) # Stop animation

  end  
end
