# next-website
> Website for Next House, residence hall at MIT.

This repository contains the code used to build the Next House website that is
located [here](https://next.mit.edu).

> - [Usage](#usage)
> - [API](#api)
> - [Installation](#installation)

## Usage
See [Installation](#installation) for how to set this up on your system.

To build the website for production, use `./deploy.sh`. Assuming you have the
proper permissions on `Athena`, this script will copy the website to the
correct folder for deployment. Contact Exec if you do not have permissions.

To develop the website, run `bundle exec jekyll serve`. You can access the
development server at http://localhost:4000, and any changes you make will be
available with just a page refresh.

## API
Most of the pages are written in `Markdown`, meaning that if you can write a
GitHub `README.md`, you can edit the pages. Documentation on `Markdown` syntax
can be found online.

To help you navigate the code, here is a reference to the different 
directories:

- `_data`: Contains the `YML` arrays that define the student services, student
groups, and so forth of Next House. Modify this when you need to change any 
of the information in these arrays.
- `_includes`: Contains the templates for certain modules of the website, such
as the header, navigation bar, and student group listing. Modify this if you
want to modify these templates somehow.
- `_layouts`: Contains the base templating used on almost every page on the
website. Modify this if you need to change this base styling.
- `_site`: Contains the built website for uploading. **Do not** interfere with
this folder manually, or commit the folder. Only upload this folder for
hosting, either with `deploy.sh` or through some other means.
- `archive`: Contains old content that was previously on the websites, such as
no longer used images. Move content here when anything is no longer in use for
documentation purposes.
- `pages`: Contains the actual page contents in Markdown, excluding anything
in the above mentioned arrays. Modify this when you need to modify the page
contents.
- `static`: Contains other static files the website needs, like JavaScript,
images, and so on. Modify this when the website needs additional static files.

## Installation
This project requires `Jekyll` and all of its dependencies to process the
website's templating. Install `Ruby`, get gems working, and install `Jekyll`
with the command `gem install jekyll`. Once this is done, you can set up the
project:

1. Clone the project with 
`git clone git@github.com:next-exec/next-website.git`.
2. Enter the repo directory and install the required dependencies with
`cd next-website` and `bundle install`. 

See [Usage](#usage) for how to use this project.

## License
TBD
