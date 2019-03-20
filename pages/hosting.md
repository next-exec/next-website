---
layout: default
permalink: /hosting/
title: Nextie.us Application Hosting
---
Have cool webapp ideas but not the resources to deploy them? As a resident of
Next House, you can get free server space!

> - [What is this for?](#what-is-this-for)
> - [What are some things currently being hosted?](#what-are-some-things-currently-being-hosted)
> - [What are some restrictions on what can be run?](#what-are-some-restrictions-on-what-can-be-run)
> - [How does it work?](#how-does-it-work)
> - [What are some of the features I can use?](#what-are-some-of-the-features-i-can-use)
> - [How do I get started?](#how-do-i-get-started)
> - [Additional Concerns](#additional-concerns)

## What is this for?
As an MIT student, you already have access to your 
[Athena locker](http://kb.mit.edu/confluence/pages/viewpage.action?pageId=3907090) 
where you can keep static webpages. You also have access to 
[scripts.mit.edu](http://scripts.mit.edu), which lets you do a bit more, like 
Python/PHP CGI scripts. However, if you wanted to host something like a Node 
app, Flask app, or anything not supported by Scripts, you'd be out of luck.
 
But now, you can use the `nextie.us` cluster to deploy applications on the
latest technologies! Examples of things that you can deploy on `nextie.us`
that aren't deployable on Athena are:
- Node.js applications
- Binary applications (anything written in a compiled language)
- Flask applications
- Applications with other dependencies (PostgreSQL, Redis, etc.)
- And more!

## What are some things currently being hosted?
- classmashups - A Discord bot that creates mashups between two random MIT classes.
- [Lifelog](https://lifelog.nextie.us) - LifeLog aims to be a project tracking
and accountability tool. It's intended to help you keep track of your own work
and share the status of your projects with others.
- [NextRes](https://res.nextie.us) - The Next House resident dashboard system.

## What are some restrictions on what can be run?
For the most part, the cluster will be able to accommodate most applications.
However, keep in mind that your request may not go through if it's 
particularly resource-heavy. This means that your application either:
- Has high CPU usage
- Uses up large amounts of RAM
- Requires a significant amount of disk space
- Expects a large volume of visitors constantly accessing it
- In some other way uses an extraneous amount of system resources

If you're unsure whether your application uses a lot in resources, still
follow the instructions below! Your application may still be accounted for,
even if you think it may use too many resources.

Note that this is not a comprehensive list of restrictions on what can be
deployed, and Next Exec reserves the right to reject your application for
other reasons.

## How does it work?
All services running on the nextie.us cluster are packaged as 
[Docker containers](https://www.docker.com/resources/what-container), to 
isolate them from each other. These containers are managed by 
[Kubernetes](https://kubernetes.io/docs/concepts/overview/what-is-kubernetes/), 
an enterprise-grade container manager that handles everything from 
routing connections to `nextie.us` to the proper place to making sure that
applications stay online even after crashes.

## What are some of the features I can use?
By hosting your applications on the `nextie.us` Kubernetes cluster, you'll
have:
- A subdomain on `*.nextie.us`
- HTTPS certificates
- Any dependencies such as databases automatically set up
- And more!

## How do I get started?
1. Fill out [this](https://goo.gl/forms/8VnizAUCc2zVX5Oo2) application. Here,
describe in as much detail as possible what your application is, how resource
intensive it will be, any other dependencies needed to run the application,
and so on.
2. Once approved, you'll receive credentials at `registry.nextie.us` to store
your application's containers and a link to instructions for how to 
"dockerize" your application and push it to the `nextie.us` server. This will 
convert your application into the container format needed to run it on the 
`nextie.us` cluster.
3. Once pushed, the application will be set up and should be online within a
few days. You will receive an update once this is done, as well as credentials
to `kubernetes.nextie.us` and instructions on how to manage your application,
view logs, deploy updates, and more.

If at any point you get lost in this process, feel free to contact 
next-techchair (at) mit (dot) edu for help!

## Additional Concerns
Additional comments and concerns should be directed to next-techchair (at) mit
(dot) edu.