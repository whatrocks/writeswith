---
title: Writes With
---
<div class="books">
<% pages.sort((a,b) => {
    if (a.date > b.date) return -1;
    if (a.date < b.date) return 1;
    return 0;
}).forEach(function(page) { _%>
    <%if (page.title !== "About" && page.title !== "Writes With") { %>
<a href="<%= pathTo(page) %>">
<div class="book">
    <img class="book-image" src="/interview-photos/<%= page.slug %>-book.jpg" />
    <p class="author"><%= page.title %></p>
    </div>
    <% } %>
<% }); _%>
</div>
</a>