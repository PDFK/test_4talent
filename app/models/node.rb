class Node < ActiveRecord::Base
	has_ancestry

	def is_connected node
		ancestors = self.ancestors
		ancestors.each do |n|
			if n.name == node.name
				return true;
			else
				descendants = n.descendants
				descendants.each do |n2|
					if n2.name == node.name
						return true;
					end
				end
			end
		end
		descendants = self.descendants
		descendants.each do |n|
			if n.name == node.name
				return true;
			else
				ancestors = n.ancestors
				ancestors.each do |n2|
					if n2.name == node.name
						return true;
					end
				end
			end
		end	
		return false;	
	end

end
