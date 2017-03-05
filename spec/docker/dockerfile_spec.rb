require 'serverspec'
require 'docker'

describe 'Dockerfile' do

  def os_version
    command('uname -a').stdout
  end

  def gem_list
    command('gem list').stdout
  end

  before(:all) do
    image = Docker::Image.build_from_dir('.')

    set :os, family: :debian
    set :backend, :docker
    set :docker_image, image.id
  end

  it 'installs ubuntu' do
    expect(os_version).to include 'Ubuntu'
  end

  context 'Ruby' do
    it 'installs ruby' do
      command('which ruby') do
        its(:exit_status) { should eq 0 }
      end
    end

    it 'gems are installed' do
      command('which gem') do
        its(:exit_status) { should eq 0 }
      end
    end

    it 'installs serverspec' do
      expect(gem_list).to include 'serverspec'
    end

    it 'installs docker-api' do
      expect(gem_list).to include 'docker-api'
    end
  end

end
