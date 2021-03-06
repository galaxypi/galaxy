# Contributing

- [Using the issue tracker](#using-the-issue-tracker)
- [Bug report](#bug-report)
- [Feature requests](#feature-requests)
- [Pull requests](#pull-requests)
- [Code guidelines](#code-guidelines)
- [Versioning](#versioning)

Looking to contribute something to Galaxy? Here's how you can help.

Please take a moment to review this document in order to make the contribution process easy and effective for everyone involved.

Following these guidelines helps to communicate that you respect the time of the developers managing and developing this open source project. In return, they should reciprocate that respect in addressing your issue or assessing patches and features.

## Using the issue tracker

The [issue tracker](https://github.com/galaxypi/galaxy/issues) is the preferred channel for [bug reports](#bug-report), [features requests](#feature-requests), [custom issues](https://github.com/galaxypi/galaxy/issues/new?template=custom-issue.md) and [submitting pull requests](#pull-requests), but please respect the following restrictions:

* Please **do not** use the issue tracker for personal support requests.  Please use the [Galaxy Discord](https://discord.gg/36K9nan) chat app as it is a better places to get help.

* Please **do not** derail or troll issues. Keep the discussion on topic and respect the opinions of others.

* Please **do not** post comments consisting solely of "+1" or ":thumbsup:". Use [GitHub's "reactions" feature](https://github.com/blog/2119-add-reactions-to-pull-requests-issues-and-comments) instead. We reserve the right to delete comments which violate this rule.

### When reporting a bug, include:

* Device and device version (Raspberry Pi Zero, Raspberry Pi 2, MacBook Pro etc..)

* Operating system and version (Mac OS X, Linux, Raspian, etc..)


## Bug report

A bug is a _demonstrable problem_ that is caused by the code in the repository. Good bug reports are extremely helpful, so thanks!

<a href="https://github.com/galaxypi/galaxy/issues/new?template=bug_report.md">› Report bug</a>

Guidelines for bug reports:

1. **Debug yuor code** &mdash; [Debug your Go code with GDB](https://golang.org/doc/gdb) to ensure your problem isn't caused by a simple error in your own code.

2. **Use the GitHub issue search** &mdash; [Search for duplicate or closed issues](https://github.com/galaxypi/galaxy/issues?q=is%3Aopen). See GitHub's [Advanced Search Syntax](https://help.github.com/articles/searching-issues-and-pull-requests/).

3. **Check if the issue has been fixed** &mdash; try to reproduce it using the latest `master`, `develop` or development branch in the repository.

A good bug report shouldn't leave others needing to chase you up for more information. Please try to be as detailed as possible in your report. What is your environment? What steps will reproduce the issue? What device and OS are you using when experiencing the problem? Do other environments show the bug differently? What would you expect to be the outcome? All these details will help people to fix any potential bugs.

Example:

> Short and descriptive example bug report title
>
> A summary of the issue and the device/OS environment in which it occurs. If
> suitable, include the steps required to reproduce the bug.
>
> 1. This is the first step
> 2. This is the second step
> 3. Further steps, etc.
>
> `<url>` - a link to the reduced test case
>
> Any other information you want to share that is relevant to the issue being
> reported. This might include the lines of code that you have identified as
> causing the bug, and potential solutions (and your opinions on their
> merits).

## Feature requests

**Feature requests are highly encouraged. We want to hear from you on what you'd like to see and/or how you'd like to utilize or access the Galaxy node network**.

<a href="https://github.com/galaxypi/galaxy/issues/new?template=feature_request.md">› Request a feature</a>

When submitting a feature request, take a moment to find out whether your idea fits with the scope and aims of the project. It's up to *you* to make a strong case to convince community members of the merits of this feature. Please provide as much detail and context as possible, providing relevant links, prior art, or live demos whenever possible.


## Pull requests

Good pull requests—patches, improvements, new features—are a fantastic help. They should remain focused in scope and avoid containing unrelated commits.

**Please ask first** before embarking on any significant pull request (e.g. implementing features, refactoring code, porting to a different language), otherwise you risk spending a lot of time working on something that the project's developers might not want to merge into the project.

Pull requests that add new features should target [the `develop` git branch](https://github.com/galaxypi/galaxy/tree/develop), where they will be welcomed and duly considered.

Please adhere to the [coding guidelines](#code-guidelines) used throughout the project (indentation, accurate comments, etc.) and any other requirements (such as test coverage).

Adhering to the following process is the best way to get your work included in the project:

1. [Fork](https://help.github.com/fork-a-repo/) the project.

   i. On GitHub, navigate to the [GalaxyPi/Galaxy](
   https://github.com/galaxypi/galaxy) repository.
   <br/>
   ii. In the top-right corner of the page, click **Fork**.


2. [Clone your fork](
   https://help.github.com/articles/fork-a-repo/#keep-your-fork-synced), and
   configure the remotes:

   ```
   # Clone your fork of the repo into the current directory
   git clone https://github.com/<your-username>/galaxy.git
   # Navigate to the newly cloned directory
   cd galaxy
   # Assign the original repo to a remote called "upstream"
   git remote add upstream https://github.com/galaxypi/galaxy.git
   ```

3. If you cloned a while ago, get the latest changes from upstream:

   ```
   git checkout develop
   git pull upstream develop
   ```

4. Create a new topic branch (off the main project development branch) to
   contain your feature, change, or fix:

   ```
   git checkout -b pull-request/<topic-branch-name>
   ```

5. Commit your changes in logical chunks. Please adhere to these
   [git commit message guidelines](
   http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
   or your code is unlikely to be merged into the main project. Use Git's
   [interactive rebase](https://help.github.com/articles/interactive-rebase)
   feature to tidy up your commits before making them public.

6. Locally merge (or rebase) the upstream development branch into your topic
   branch:

   ```
   git pull [--rebase] upstream develop
   ```

7. Push your topic branch up to your fork:

   ```
   git push origin pull-request/<topic-branch-name>
   ```

8. [Open a Pull Request](
   https://help.github.com/articles/using-pull-requests/) with a clear title
   and description against the `develop` branch.

**IMPORTANT**: By submitting a patch, you agree to allow the project owners to
license your work under the terms of the [MIT License](https://github.com/galaxypi/galaxy/blob/master/LICENSE.md) (if it
includes code changes).


## Code guidelines

Adhere to the [Effective Go](
https://golang.org/doc/effective_go.html) code guide. to write clear, idiomatic Go code.
The code guide provides tips on items such as [Formatting](
https://golang.org/doc/effective_go.html#formatting), [Commentary](
https://golang.org/doc/effective_go.html#commentary), [Control Structures](
https://golang.org/doc/effective_go.html#control-structures), [Functions](
https://golang.org/doc/effective_go.html#functions), [Methods](
https://golang.org/doc/effective_go.html#methods) and much more.

New to Go? Get started by visiting [How to Write Go Code](https://golang.org/doc/code.html).


## Versioning

For transparency into our release cycle and in striving to maintain backward compatibility, Galaxy is maintained under [the Semantic Versioning guidelines](https://semver.org/). Sometimes we screw up, but we'll adhere to those rules whenever possible.

See [the Releases section of our GitHub project](https://github.com/galaxypi/galaxy/releases) for changelogs for each release version of Galaxy.

<div align="right">
    <b><a href="#contributing">^ back to top</a></b>
</div>