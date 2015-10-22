function IntVerdiNy = Trapes(IntVerdiGml, integrand, tidsskritt)
    IntVerdiNy =  IntVerdiGml + (integrand(1)+ integrand(2))/2*tidsskritt; % numerisk integrerer
end


