Quando('interajo com dropdown e select') do
  visit('/buscaelementos/dropdowneselect')
  find('.btn.dropdown-button').click
  find('#dropdown3').click
  sleep(2)

  select 'Chrome', from: 'dropdown'
  # find('option[value="2"]').select_option
  sleep(2)


end

Quando('preencho o autocomplete') do
  visit('/widgets/autocomplete')
  # fill_in(id: 'autocomplete-input', with: 'Rio de Janeiro')
  find('#autocomplete-input').set 'Rio de Janeiro'
  find('ul', text: 'Rio de Janeiro').click
  sleep(5)
end
