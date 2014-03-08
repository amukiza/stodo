require File.expand_path '../spec_helper.rb', __FILE__
require File.expand_path '../../lib/task.rb', __FILE__

describe "Task" do
    describe "Task With data" do
      let(:task){Task.new "name", "Description", "2006-09-05"}
      describe "Task With data" do
        it { task.name.should_not be_nil}
        it { task.description.should_not be_nil}
        it { task.date.should_not be_nil}
    end

    describe "Task equality" do
        it "Should be equal if given simmilar values" do
            expect(task).to eq(Task.new "name", "Description", "2006-09-05")
        end
        it "should not be equal if some attributes differ" do
            expect(task).not_to eq(Task.new "cooking beans", "hmmmm", "2006-09-11")
        end
    end
  end
end