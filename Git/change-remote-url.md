---
title: "Changing the Remote URL of a Git Repository"
layout: "default"
date: "2017-04-22"
author: "Samantha Feng"
---

When one finds themselves in a situation where multiple remote git repositories are required for a local repository, or if one switches remote repositories (example: switching from Bitbucket to Github, starting a new repository with old code, or switching from HTTPS access to SSH access) one can repoint their remote URL for the repository.

There are two options:

- One can either edit the .git/config file, which will look something similar to this:

  [core]
          repositoryformatversion = 0
          filemode = true
          bare = false
          logallrefupdates = true
  [remote "origin"]
          url = git@github.com:samfeng279/oicr-tips.git
          fetch = +refs/heads/*:refs/remotes/origin/*
  [branch "master"]
          remote = origin
          merge = refs/heads/master

  To change the remote repository the local repository is pointing to, one can change the remote "origin" URL section by running the following command in the root folder of the repository: vi .git/config

- On the other hand, one can also change the remote URL of the repository by running the following command:

  git remote set-url [NAME] [REPO-URL]

  [NAME] is commonly replaced by 'origin' or 'upstream'
  [REPO-URL] is replaced by the URL that you would like your remote repository to be. For example, the current repo could be one of 2 options, depending on whether you are using HTTPS or SSH:
    - SSH: git@github.com:samfeng279/oicr-tips.git
    - HTTPS: https://github.com/samfeng279/oicr-tips.git
