Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.make

Constructs an `HttpClient` from a low-level request runner.

**Details**

The runner receives the request, resolved URL, abort signal, and current fiber. The client wrapper handles URL construction failures, tracing and propagation, header redaction, and aborting non-scoped requests on interruption.

**Signature**

```ts
declare const make: (f: (request: HttpClientRequest.HttpClientRequest, url: URL, signal: AbortSignal, fiber: Fiber.Fiber<HttpClientResponse.HttpClientResponse, Error.HttpClientError>) => Effect.Effect<HttpClientResponse.HttpClientResponse, Error.HttpClientError>) => HttpClient
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L652)

Since v4.0.0