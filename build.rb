templatefile = 'template.html'
filepattern = '_*.html'

template = File.open(templatefile,'r:utf-8').read
Dir.glob(File.join('**','_*.html')) do |name|
  tmp = File.open(name,'r:utf-8').read
  output = template.sub('{content}',tmp)
  t = name.split('/')
  t.last.gsub!(/^_/,'')
  name = t.join('/')
  File.open( name,"w:utf-8").puts(output)
end
