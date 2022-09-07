require 'UsuarioTeste'
RSpec.describe UsuarioTeste do
    let(:usuario) {build(:usuario)}
        it 'usuário válido' do
            expect(usuario).to be_valid

    end
end
