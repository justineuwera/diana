class ClearProjects
    include PageObject
    checkbox(:check1, :id =>'merge_project', :index => 0)
    checkbox(:check2, :id =>'merge_project', :index => 1)
    checkbox(:check3, :id =>'merge_project', :index => 2)
    button(:clearproject, 'id': 'clear_selection_btn') 
    span(:deselected, 'class': 'selected_projects_amount',text: '0') 
end