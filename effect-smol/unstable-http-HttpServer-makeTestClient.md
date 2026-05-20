Package: `effect`<br />
Module: `HttpServer`<br />

## HttpServer.makeTestClient

Builds an `HttpClient` that sends requests to the current test HTTP server.

**Details**

For TCP servers, requests are prefixed with the server URL and `0.0.0.0` is
rewritten to `127.0.0.1`.

**Gotchas**

Unix socket addresses are not supported.

**Signature**

```ts
declare const makeTestClient: Effect.Effect<HttpClient.HttpClient, never, HttpClient.HttpClient | HttpServer>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServer.ts#L288)

Since v4.0.0