module EventsHelper
  def formata_telefone(n_telefone)
  tel_formatado = "("
  tel_formatado << n_telefone[0..1]
  tel_formatado << ")"
  tel_formatado << n_telefone[2..6]
  tel_formatado << "-"
  tel_formatado << n_telefone[7..11]
  tel_formatado
end

end
