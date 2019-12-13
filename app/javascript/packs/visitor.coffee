
console.log( "Visitor Coffee Loaded!" )

$ ->
  # Deprecated: using AJAX
  $( "button#add_visitor_coffee" ).click (e) ->
    e.preventDefault()

    console.log "Add Visitor Clicked"
    
    msec = new Date().getTime()

    id_attr_name = "schedule_visitors_attributes_#{msec}_name"
    name_attr_name = "schedule[visitors_attributes][#{msec}][name]"

    id_attr_credential = "schedule_visitors_attributes_#{msec}_credential"
    name_attr_credential = "schedule[visitors_attributes][#{msec}][credential]"

    id_attr_email = "schedule_visitors_attributes_#{msec}_email"
    name_attr_email = "schedule[visitors_attributes][#{msec}][email]"

    $( "#my_list" ).append(
      "<div class='visitorContainer'>
        <div class='field'>
          <label for='schedule_visitors_attributes_#{msec}_name'>Nome</label>
        </div>
      </div>")

