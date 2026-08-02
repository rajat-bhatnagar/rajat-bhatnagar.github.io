# About this repository

This Jekyll site is deployed to GitHub Pages with GitHub Actions.

For a private repository, GitHub Pages must be enabled for the repository's plan, and the Pages source should be set to GitHub Actions in repository settings.

## Local build check

Use these steps before merging or deploying a branch:

1. Install Ruby 3.0 or newer and Bundler.
2. Install the site dependencies:

   ```bash
   bundle install
   ```

3. Build the site locally:

   ```bash
   JEKYLL_ENV=production bundle exec jekyll clean
   JEKYLL_ENV=production bundle exec jekyll build
   ```

4. Check generated links without requiring external network access:

   ```bash
   bundle exec htmlproofer ./_site --allow-hash-href --disable-external
   ```

5. Preview the branch locally:

   ```bash
   bundle exec jekyll serve --livereload
   ```

   Open <http://127.0.0.1:4000/>.

## Deployment check

After a branch is merged into `master`, GitHub Actions should run `.github/workflows/jekyll-pages.yml` and deploy the generated `_site` artifact to GitHub Pages.

If deployment is broken after making the repository private, check:

1. Repository `Settings -> Pages -> Build and deployment` is set to `GitHub Actions`.
2. The account plan supports GitHub Pages for private repositories. GitHub Pages is available for private repositories on GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server.
3. The `Deploy Jekyll site to GitHub Pages` workflow completed successfully on `master`.
4. The Pages site is enabled. With GitHub CLI, this should return the Pages configuration instead of `404`:

   ```bash
   gh api repos/rajat-bhatnagar/rajat-bhatnagar.github.io/pages
   ```

# rajat-bhatnagar.github.io
> **Plan :**
 -  ✔︎ Initial Commit by creating a new website layout using jekyll new (Completed_17th_June_2017)
 -  ✔︎ Add Header , Footer and Modify Layout of theme(Completed_19th_June_2017)
 -  ✔︎ Add meaningful Content in each of the sections(Completed_9th_July_2017)
 -  ✔︎ Add LinkedIn and facebook profile icon(Completed_16th_September_2017)
 -  ✔︎ Add free build environment on Travis, with GitHub integration for pull requests (Completed_17th_September_2017)
 -  ✔︎ Refactor project and remove unused files (Completed_17th_September_2017)
 -  ✔︎ Add Disqus for social comments(Completed_24th_September_2017)
 -  ✔︎ Add website icon(Completed_24th_September_2017)
 -  Integrate Google Analytics and Search Engine Optimization
 -  Include Number of visits on each page, Make use of google analytics
 -  Make Readme.md in a tabular format
 -  30 Blog Posts
 -  30 You Tube Videos
 -  Include personal touch by a kick off video presentation on opening page
 -  Implement Web Content Accessibility Guidelines
 -  Include Animation on Jekyll Site
 -  Stop promotion of code to github if build fails
 -  Add a donate link
 -  Add MIT License
 -  ︎Implement google search functionality on portal
 -  Add Contact me information or page
 -  Create a scroll to top icon on right side of all web pages, bottom right
 -  Show Home location map at the bottom of page
 -  Include Table to content similar to a wiki on one of the pages
