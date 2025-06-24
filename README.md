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



