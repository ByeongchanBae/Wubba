const initSearchSubmit = () => {
  $("search-submit-button").on("click", function(){
    var searchText = $('select#search').innerText
    var matches_stack = $('#matches-tech_stack').innerText
    matches_stack = searchText
  });
}

export { initSearchSubmit };
