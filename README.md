Deno Rust Wasm Template
=======================

This is a template repository for a Rust project that is compiled to Wasm for
[Deno]. Use it to build a project in Rust to run with Deno and deploy to
[Deno Deploy].

Usage
-----

### Dependencies

* [Rust] with `wasm32-unknown-unknown` target installed
* [Deno]
* [wasm-bindgen]
* `make` (GNU make or BSD make will work)

### Tasks

After cloning the repo the following tasks are available:

* `make` — build the project
* `make run` — run the web server, building if necessary
* `make test` — run the integration tests

Deployment
----------

There are a few ways to deploy a project using this template to Deno Deploy:

* Manually with `deployctl`
* [Automatic git integration](https://deno.com/deploy/docs/projects#git-integration)
* GitHub Actions

The easiest, whilst also providing preview deployments is probably the
Automatic git integration. To do this there needs to be no build step so the
`build` directory must be committed to the repository.

[Rust]: https://www.rust-lang.org/
[wasm-bindgen]: https://github.com/rustwasm/wasm-bindgen
[Deno]: https://deno.land/
[Deno Deploy]: https://deno.com/deploy
