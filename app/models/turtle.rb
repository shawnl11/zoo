class Turtle < ActiveRecord::Base
	def hide()
		# shell status update true
		shell_status = self.shell
		if shell_status == false
			self.update(shell: true)
		end
	end

	def emerge()
		shell_status = self.shell
		if shell_status == true
			self.update(shell: false)
		end
	end
end
