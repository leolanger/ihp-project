module Web.FrontController where

import IHP.RouterPrelude
-- Controller Imports
import Web.Controller.Comments
import Web.Controller.Posts
import Web.Controller.Prelude
import Web.Controller.Static
import Web.View.Layout (defaultLayout)

instance FrontController WebApplication where
  controllers =
    [ startPage WelcomeAction,
      -- Generator Marker
      parseRoute @CommentsController,
      parseRoute @PostsController
    ]

instance InitControllerContext WebApplication where
  initContext = do
    setLayout defaultLayout
