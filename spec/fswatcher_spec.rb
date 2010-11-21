here = File.expand_path(File.dirname(__FILE__))
require "#{here}/spec_helper.rb"
require 'watcher_examples'
require 'fswatcher'

module Rerun
  describe FSWatcher do
    it_should_behave_like "all watchers"
    def create_watcher(&block)
      FSWatcher.new(&block)
    end
  end
end
