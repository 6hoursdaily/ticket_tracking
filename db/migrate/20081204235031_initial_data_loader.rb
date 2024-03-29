class InitialDataLoader < ActiveRecord::Migration
  def self.up
    [ 'Correo electrónico',
      'Red inalámbrica',
      'Red cableada',
      'Soporte para windows y sus paquetes',
      'Virus!',
      'Telefonía',
      'Páginas web del instituto',
      'Fotografía y carteles',
      'SALVA',
      'SIESTA',
      'Cluster Brodix',
      'Cluster Ollín',
      'Supercómputo',
      'Laboratorio de cómputo de Sistemas Complejos',
      'Laboratorio de cómputo de Física Teórica',
      'Laboratorio de cómputo general de estudiantes (VAX)',
      'Problemas conmigo mismo y con mis colegas',
      'Otro'].each do |name|
        Category.create(:name => name)
      end
    
    ['Alta', 'Normal', 'Baja'].each do |name|
        Priority.create(:name => name)
    end
    
    ['En proceso', 'Cerrado', 'Cancelado', 'Duplicado'].each do |name|
        Status.create(:name => name)
    end
    
    [{:login => 'alex', :password => 'bingo!', :password_confirmation => 'bingo!', :email => 'xp1orer@nodomain.com'}].each do |h|
        @user = User.create!(h)
        @user.categories << Category.all[0..5]
        @user.save
      end
    
  end

  def self.down
  end
end
