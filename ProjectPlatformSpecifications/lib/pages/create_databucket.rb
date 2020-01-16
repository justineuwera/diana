class CreateBucket
    include PageObject
    checkbox(:check1, class: 'surveys_batch_checkbox', :index => 0)
    checkbox(:check2, class: 'surveys_batch_checkbox', :index => 1)
    checkbox(:check3, class: 'surveys_batch_checkbox', :index => 2)
    button(:createnewdatabucket, value: 'Create Databucket from selected')
    button(:submit, value:'Next >')
    button(:surveyselection, value:'Save selection')
    p(:databucketcreated, text:'DataBucket successfully saved.')
end  