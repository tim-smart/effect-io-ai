Package: `effect`<br />
Module: `FetchHttpClient`<br />

## FetchHttpClient.layer

Layer that provides an `HttpClient` implementation backed by the configured
`Fetch` function.

**When to use**

Use when an Effect program should execute `HttpClient` requests through the
platform `fetch` implementation, especially in browser, edge, or Node.js
runtimes with `globalThis.fetch`.

**Details**

The layer uses the current `Fetch` reference and optional `RequestInit`
service for each request. Request-specific method, headers, body, and abort
signal are supplied by the client and override matching `RequestInit` fields.

**Gotchas**

Fetch behavior comes from the runtime's implementation, so CORS, cookies,
redirects, abort handling, and streaming support can vary by platform. Stream
request bodies are sent as Web streams with `duplex: "half"`, and any
`content-length` header is removed before calling `fetch`.

**See**

- `Fetch` for supplying the fetch implementation used by this layer
- `RequestInit` for default `RequestInit` options applied before request-specific fields

**Signature**

```ts
declare const layer: Layer.Layer<HttpClient.HttpClient, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FetchHttpClient.ts#L146)

Since v4.0.0