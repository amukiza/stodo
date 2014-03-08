require File.expand_path '../spec_helper.rb', __FILE__
require File.expand_path '../../lib/task.rb', __FILE__

describe "Task" do
    describe "Task With data" do
        let(:task){Task.new "name", "Description", "2006-09-05"}
        it { task.name.should_not be_nil}
        it { task.description.should_not be_nil}
        it { task.date.should_not be_nil}
    end
end
