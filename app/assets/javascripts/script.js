function show()
{
    $.ajax({
        url: "posts_api.json?lower_bound_id=4&upper_bound_id=9",
        cache: false,
        success: function(html){
            console.log(JSON.stringify(html));
            $("#content").html(JSON.stringify(html));
        }
    });
}

$(document).ready(function(){
    show();

});