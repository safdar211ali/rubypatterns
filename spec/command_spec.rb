require 'spec_helper'
require_relative '../lib/command'

describe 'Command pattern' do
  describe Computer do
    let(:computer) { Computer.new }
    before :each do
      computer.add(CalibrateDriverCommand.new)
      computer.add(TestComplierCommand.new)
    end
    it 'can add commands to its queue' do
      expect(computer.queue.size).to eq(2)
    end
    it ' executes all commads in order ' do
      expect(computer.execute).to eq %Q{
Calibrated Uranium-Rod Driver
Tested Jupiter Wave Complier
}
    end
  end
  describe 'Commands' do
    describe AmplifyShieldCommand do
      it 'amplifies shield' do
        command = AmplifyShieldCommand.new
        expect(command.execute).to eq('Amplified Plutonium-Gamma Shield')
      end
    end
    describe CalibrateDriverCommand do
      it 'Calibrates driver' do
        command = CalibrateDriverCommand.new
        expect(command.execute).to eq('Calibrated Uranium-Rod Driver')
      end
    end
    describe TestComplierCommand do
      it 'tests complier' do
        command = TestComplierCommand.new
        expect(command.execute).to eq('Tested Jupiter Wave Complier')
      end
    end
    describe InstallRegulatorCommand do
      it 'amplifies shield' do
        command = InstallRegulatorCommand.new
        expect(command.execute).to eq('Installed Hydroelectric Magnatosphere Regulator')
      end
    end
  end
end