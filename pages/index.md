---
title: Writes With
---
<div class="books">
<% for (const page of pages) { _%>
    <%if (page.title !== "About" && page.title !== "Writes With") { %>
<a href="<%= pathTo(page) %>">
<div class="book">
    <img class="book-image" src="/interview-photos/<%= page.slug %>-book.jpg" />
    <p class="author"><%= page.title %></p>
    </div>
    <% } %>
<% } _%>
</div>
</a>