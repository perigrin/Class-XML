use Module::Build;
Module::Build->new(
  module_name => 'Class::XML',
  license => 'perl',
  requires => {
    'Test::More' => '0.0',
    'XML::XPath' => '1.0',
  },
)->create_build_script;
