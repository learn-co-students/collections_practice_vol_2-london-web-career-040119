
[1mFrom:[0m /home/francisco/collections_practice_vol_2-london-web-career-040119/collections_practice.rb @ line 61 Object#count_elements:

    [1;34m45[0m: [32mdef[0m [1;34mcount_elements[0m(array)
    [1;34m46[0m: 
    [1;34m47[0m:   array_values = []
    [1;34m48[0m:   new_hash = []
    [1;34m49[0m: 
    [1;34m50[0m:   array.each [32mdo[0m |element|
    [1;34m51[0m:     key = element.keys[[1;34m0[0m]
    [1;34m52[0m:     [32mif[0m array_values.include?(element[key]) == [1;36mfalse[0m
    [1;34m53[0m:       array_values << element[key]
    [1;34m54[0m:     [32mend[0m
    [1;34m55[0m:   [32mend[0m
    [1;34m56[0m: 
    [1;34m57[0m:   array.each [32mdo[0m |element|
    [1;34m58[0m:     [32mif[0m new_hash.include?(element) == [1;36mfalse[0m
    [1;34m59[0m:       element[[33m:count[0m] = [1;34m1[0m
    [1;34m60[0m:       new_hash << element
 => [1;34m61[0m:       binding.pry
    [1;34m62[0m:     [32melse[0m
    [1;34m63[0m:       new_hash.each [32mdo[0m |name, stats|
    [1;34m64[0m:         binding.pry
    [1;34m65[0m:       [32mend[0m
    [1;34m66[0m:     [32mend[0m
    [1;34m67[0m:   [32mend[0m
    [1;34m68[0m: 
    [1;34m69[0m: [32mend[0m

