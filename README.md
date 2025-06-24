coin-flip-test
==
An example of how to use a public npm package hosted on GitHub.

## Usage (with Makefile)

- `make install`   # Install dependencies
- `make build`    # Compile TypeScript
- `make start`    # Run the demo app
- `make clean`    # Remove build output

---

## GitHub Package Registry Authentication

This project uses the [`@mitchallen/coin-flip`](https://github.com/users/mitchallen/packages/npm/package/coin-flip) npm package, which is hosted on GitHub Packages. Even though the package is public, you must authenticate with a GitHub personal access token to install it.

**Setup steps:**
1. Create a GitHub personal access token with `read:packages` scope at [https://github.com/settings/tokens](https://github.com/settings/tokens).
2. Run `npm login --registry=https://npm.pkg.github.com` and use your GitHub username and token.
3. Run `make install` to install dependencies.

---

## Using a Personal Access Token (PAT) in .npmrc and Workflows

To automate installs or use this package in CI/CD, you can add your GitHub PAT to your `.npmrc` file:

```
//npm.pkg.github.com/:_authToken=YOUR_GITHUB_PAT
```

**Security tip:** Never commit your `.npmrc` with a real token to version control. Use environment variables or CI/CD secrets for automation.

### Example: GitHub Actions Workflow

```yaml
- name: Set up .npmrc for GitHub Packages
  run: echo "//npm.pkg.github.com/:_authToken=${{ secrets.GITHUB_TOKEN }}" > ~/.npmrc

- name: Install dependencies
  run: npm install
```

Replace `secrets.GITHUB_TOKEN` with your own secret if using a custom PAT.



