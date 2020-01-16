class RemoveMarket
	include PageObject
	link(:project, class: 'projects-index__project-title', :index => 0)
    link(:removeM, class: 'btn btn-default btn-xs','text': 'Remove',:index => 0)
    td(:removing, class:'market-title')
    div(:notice, id:'flash_notice')
end