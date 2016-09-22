class ContatoController < ApplicationController

  def new
    @contato = Contato.new
  end

  def create
    @contato = Contato.new(params[:contato])
    @contato.request = request
    if @contato.deliver
      flash.now[:error] = nil
    else
      flash.now[:error] = 'A mensagem não pode ser enviada.'
      render :new
    end
  end
end
