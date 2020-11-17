module Web.View.Comments.Index where

import Web.View.Prelude

data IndexView = IndexView {comments :: [Comment]}

instance View IndexView where
  html IndexView {..} =
    [hsx|
    |]

renderComment comment =
  [hsx|
    <tr>
        <td>{comment}</td>
        <td><a href={ShowCommentAction (get #id comment)}>Show</a></td>
        <td><a href={EditCommentAction (get #id comment)} class="text-muted">Edit</a></td>
        <td><a href={DeleteCommentAction (get #id comment)} class="js-delete text-muted">Delete</a></td>
    </tr>
|]
