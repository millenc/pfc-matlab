function h = harmmean0( values )

if sum(values == 0) > 0
   h = 0;
else
   h = harmmean(values); 
end

end

