# -*- encoding : utf-8 -*-
module ApplicationHelper
# Retourner un titre basé sur la page.
  def titre
    base_titre = "Pampa"
    if @titre.nil?
      base_titre
    else
      "#{base_titre} | #{@titre}"
    end
  end
end
