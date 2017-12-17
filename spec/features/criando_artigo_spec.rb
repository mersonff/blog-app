require "rails_helper"

RSpec.feature "Criando artigos" do 
		scenario "Um usuário cria um novo artigo" do
		visit "/"
		click_link "Novo Artigo"
		fill_in "Titulo", with: "Criando um blog" 
		fill_in "Corpo", with: "Lorem Ipsum" 
		click_button "Criar Artigo"
		expect(page).to have_content("Artigo foi criado com sucesso.")
		expect(page.current_path).to eq(artigos_path) 
	end
end