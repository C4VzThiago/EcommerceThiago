class CreateProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :produtos do |t|
      t.string :titulo
      t.string :conteudo
      t.float :preco
      t.string :url
      t.boolean :ativo

      t.timestamps
    end
  end
end
