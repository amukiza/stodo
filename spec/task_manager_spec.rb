require File.expand_path '../spec_helper.rb', __FILE__
require File.expand_path '../../lib/task_manager.rb', __FILE__

describe "Task Manager" do
  let(:task_manager){TaskManager.new}
  
  describe "TaskManager With no Tasks" do
    it { task_manager.tasks.count.should eq(0)}
  end

  describe "TaskManager With Tasks" do
    let(:task){Task.new "name", "Description", "2006-09-05"}
    
    it 'Task manager with task should store tasks' do
      task_manager.add(task)
      expect(task_manager.tasks.count).to eq(1)
    end
    it "Should not add the same task twice" do
        task_manager.add(task)
        expect(task_manager.tasks.count).to eq(1)
        task_manager.add(task)
        expect(task_manager.tasks.count).to eq(1)
    end

    it "should add tasks that do not exists" do
        task_manager.add(task)
        expect(task_manager.tasks.count).to eq(1)
        task_manager.add(Task.new "Digging", "Description", "2012-22-2")
        expect(task_manager.tasks.count).to eq(2)
    end
    it "returns same task as added" do
        task_manager.add(task)
        expect(task_manager.tasks.first).to eq(task)
    end
  end
end
