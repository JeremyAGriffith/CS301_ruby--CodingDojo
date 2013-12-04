op = [:+, :-, :*, :/].shuffle.first
nums = [5, 3, 1, 1, [1, 2]].flatten
print nums.join(op.to_s), " = ", nums.reduce(op)