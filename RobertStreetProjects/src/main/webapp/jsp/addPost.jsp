<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Add Post</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">        
        <link href="${pageContext.request.contextPath}/css/Home.css" rel="stylesheet">
        <script src='https://cloud.tinymce.com/stable/tinymce.min.js'></script>
        <script>
            tinymce.init({
                selector: '#addPostArea',
                plugins: 'advlist autolink link image lists charmap print preview',
                a_plugin_option: true,
                a_configuration_option: 100,
                height: "200px"
            });
        </script>
    </head>
    <body>

        <div class="container-fluid navbar" >
            <div id="header">
            </div>
        </div>


        <!-- we will need to use the tinyMCE to make new posts-->
        <div class="container" id="margin">
            <h2>New Post</h2>

            <div class="col-md-8">
                <form id="newPostForm" method="POST" action="${pageContext.request.contextPath}/addPost">
                    <div>
                        <label for="postTitle">Post Title:</label>
                        <input id="postTitle" type="text" name="newPostTitle" value="New Post Title">
                    </div>
                    <div>
                        <label for="newPostCategory">Post Category:</label>
                        <select id="newPostCategory" name="newPostCategory">
                            <option name="newPostCategory" value="">Select Category</option>
                            <!--                        <option name="newPostCategory" value="option1">Option 1</option>
                                                    <option name="newPostCategory" value="option1">Option 2</option>-->

                            <c:forEach var="currentCategory" items="${categories}" >
                                <option name="newPostCategory" value="<c:out value='${currentCategory.categoryId}'/>">
                                    <c:out value="${currentCategory.name}"/>
                                </option>
                            </c:forEach>
                        </select>
                    </div>

                    <div>
                        <input type="text" list="tagList" name="getTag" id="getTags"/>
                        <datalist id="tagList">
                            <c:forEach var="currentTag" items='${tagList}' >
                                <option name="newTags">
                                    <c:out value="${currentTag.tagName}"/>
                                </option>        
                            </c:forEach>
                        </datalist>
                        <input type="button" id="addTagbut" value="Add Tags" onclick="addTag()"/>
                    </div>
                    <div>
                        <input type="text" name="photo" id="addPostPhoto"/>
                        <input type="button" value="Add Photo" onclick="addPhoto()"/>
                    </div>
                    <div>
                        Note: including the tag '~break~' in your post will set the limit for content displayed on main page.
                    </div>



                    <textarea id = "addPostArea" name='newPost'>
                    </textarea>

                    <input type="hidden" name="username" value="<security:authentication property='principal.username' />"/>
                    <div class="col-md-2">
                        <input type="submit" class="postSubmit" placeholder="Add Post"/>
                    </div>
                    <div class="col-md-8">
                        <textarea type="text" name="tags" class="tagArea"
                                  id="addTags" style=" height:25px;"> </textarea>
                    </div>



                </form>
            </div>
            <div class="col-md-4">
                <img id="photoInput" src="${photoPath}"/>
            </div>       

        </div>

        <div id="footer">  
        </div>
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/jshome.js"></script>
        <script src="${pageContext.request.contextPath}/js/loadHeader.js"></script>
    </body>
</html>
