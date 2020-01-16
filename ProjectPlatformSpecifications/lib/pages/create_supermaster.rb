class CreateSupermaster
    include PageObject
    checkbox(:check1, :id =>'merge_project', :index => 0)
    checkbox(:check2, :id =>'merge_project', :index => 1)
    checkbox(:check3, :id =>'merge_project', :index => 2)
    button(:createsupermaster, text: 'Create SuperMaster')
    p(:supermaster, "text": 'Created SuperMaster Market')
end
