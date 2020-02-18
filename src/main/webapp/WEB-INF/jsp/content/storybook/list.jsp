<content:title>
    <fmt:message key="storybooks" /> (${fn:length(storyBooks)})
</content:title>

<content:section cssId="storyBookListPage">
    <div class="section row">
        <a class="right btn waves-effect waves-light grey-text white" 
           href="<spring:url value='/content/storybook/list/storybooks.csv' />">
            <fmt:message key="export.to.csv" /><i class="material-icons right">vertical_align_bottom</i>
        </a>
        
        <p>
            <fmt:message key="to.add.new.content.click.the.button.below" />
        </p>
        
        <c:forEach var="storyBook" items="${storyBooks}">
            <div class="col s12 m6 l4">
                <a name="${storyBook.id}"></a>
                <div class="storyBook card">
                    <a href="<spring:url value='/content/storybook/edit/${storyBook.id}' />">
                        <img src="<spring:url value='/image/${storyBook.coverImage.id}.${fn:toLowerCase(storyBook.coverImage.imageFormat)}' />" alt="${storyBook.title}" />
                    </a>
                    
                    <div class="card-content">
                        <h4><c:out value="${storyBook.title}" /></h4>
                        <p class="grey-text" style="margin-bottom: 0.5em;"><c:out value="${storyBook.description}" /></p>
                        <p><fmt:message key="grade.level" />: <fmt:message key="grade.level.${storyBook.gradeLevel}" /></p>
                        <p><fmt:message key="revision" />: ${storyBook.revisionNumber}</p>

                        <div class="divider" style="margin: 1em 0;"></div>

                        <a class="editLink" href="<spring:url value='/content/storybook/edit/${storyBook.id}' />"><i class="material-icons">edit</i><fmt:message key="edit" /></a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
    
    <div class="fixed-action-btn" style="bottom: 2em; right: 2em;">
        <a href="<spring:url value='/content/storybook/create' />" class="btn-floating btn-large tooltipped" data-position="left" data-delay="50" data-tooltip="<fmt:message key="add.storybook" />"><i class="material-icons">add</i></a>
        <ul>
            <li><a href="<spring:url value='/content/storybook/create-from-epub' />" class="btn-floating btn-large tooltipped" data-position="left" data-tooltip="<fmt:message key="upload.epub.file" />"><i class="material-icons">cloud_upload</i></a></li>
        </ul>
    </div>
</content:section>
