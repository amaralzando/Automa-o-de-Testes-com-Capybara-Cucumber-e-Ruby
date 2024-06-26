Quando('eu fazer upload do arquivo') do
  visit('/outros/uploaddearquivos')

  @pdf = File.join(Dir.pwd, 'features/assets/1.pdf')
  attach_file('upload', @pdf, make_visible:  true)
  sleep(2)
end
