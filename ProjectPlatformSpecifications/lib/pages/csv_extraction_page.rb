class ExtractionCsv
    include PageObject
    span(:databucket, class: 'translation_missing')
    #link(:bucket, class : 'col-xs-3', :index => 1)
    link(:bucket, 'text': 'Chocolate - PIlot - 2020-01-10')
    button(:submit, value:'Next >')
    button(:extraction, class: 'btn btn-primary dropdown-toggle', :index => 0) 
    link(:tocsv, 'text': 'To CSV', :index => 0)
    button(:csv1, value:'Extract Split CSV')
end