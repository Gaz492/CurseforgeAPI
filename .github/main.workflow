workflow "Build" {
  on = "push"
  resolves = ["GitHub Pages Deploy"]
}

action "Setup Node.js for use with actions" {
  uses = "actions/setup-node@7af5963081f4115489390c8e8e31da346136cb37"
}

action "GitHub Pages Deploy" {
  uses = "maxheld83/ghpages@v0.2.1"
  needs = ["Setup Node.js for use with actions"]
}
