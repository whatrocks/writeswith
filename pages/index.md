---
title: Writes With
---
# WRITES WITH

<hr>
<p>ABOUT</p>
<hr>

<div class="books">
<% for (const page of pages) { _%>
    <%if (page.title !== "About" && page.title !== "Writes With") { %>
<a href="<%= pathTo(page) %>">
<div class="book">
    <img src="/interview-photos/<%= page.slug %>-book.jpg" />
    <p><%= page.work %></p>
    <p><%= page.title %></p>
    </div>
    <% } %>
<% } _%>
</div>
</a>