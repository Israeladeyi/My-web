<div>
  <h1>israel's Page of Interests</h1>
  <p>The world wants to know: who is Adeyi Israel? Read this page to learn about Adeyi Israel like(and maybe his dislikes)!</p>
</div>
<div>
  <h2>What's Your Top 5?</h2>
  <p> Israel was recently asked about his top 5 movies, musicians, and places he has visited. Here are his answers!</p>
  <h3>Movies</h3>
  <h3>Music Artists</h3>
  <h3>Places I've Visited</h3>
</div># This is a basic workflow to help you get started with Actions

name: CI

# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the main branch
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:

# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:
  # This workflow contains a single job called "build"
  build:
    # The type of runner that the job will run on
    runs-on: ubuntu-latest

    # Steps represent a sequence of tasks that will be executed as part of the job
    steps:
      # Checks-out your repository under $GITHUB_WORKSPACE, so your job can access it
      - uses: actions/checkout@v2

      # Runs a single command using the runners shell
      - name: Run a one-line script
        run: echo Hello, world!

      # Runs a set of commands using the runners shell
      - name: Run a multi-line script
        run: |
          echo Add other actions to build,
          echo test, and deploy your project.
