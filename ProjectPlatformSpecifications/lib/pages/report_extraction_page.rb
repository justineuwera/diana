class ExtractionReport
    include PageObject
    span(:databucket, class: 'translation_missing')
    #link(:bucket, class : 'col-xs-3', :index => 1)
    link(:bucket, 'text': 'Chocolate - PIlot - 2020-01-10')
    button(:submit, value:'Next >')
    button(:extraction, class: 'btn btn-primary dropdown-toggle', :index => 0) 
    link(:toreport, 'text': 'To Report Dashboard', :index => 0)
    link(:reportexctraction, class: 'btn btn-default')
    button(:newreport, value:'Create ReportDashboard Extraction')
end