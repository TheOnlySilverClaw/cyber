import t 'test'

-- Temporary rc if expr cond is released before entering body. (cond always evaluates true for rc objects)
a = if string(1) then 123 else false

-- Temporary rc if stmt cond is released before entering body. (cond always evaluates true for rc objects)
if string(1):
    pass

-- Temporary rc else cond is released before entering body. 
if false:
    pass
else string(1):
    pass

-- Temporary rc where cond is released before entering body.
while string(1):
    break