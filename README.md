# Semaphorex

**NOTE: This repository is still a work in progress and can do virtually
anything including, but not restricted to, eating your family.**

Semaphorex is an Elixir wrapper for the [Semaphore API](https://semaphoreci.com/docs/api.html).

## Usage

**NOTE: In its current status, the API only performs `get` requests to the
API.**

To use Semaphorex you need your personal token which can be found in your
Semaphore settings page.

Start by creating a client and use it to make API requests.

```elixir
client = Semaphorex.Client.new "your-personal-token"
Semaphorex.get "projects", client
```

About
-----

Semaphorex is maintained by [Subvisual](http://subvisual.co).

[![Subvisual](https://raw.githubusercontent.com/subvisual/guides/master/github/templates/subvisual_logo_with_name.png)](http://subvisual.co)

If you need to contact the maintainer you can <a href="mailto:contact@subvisual.co">reach out to us</a>.
