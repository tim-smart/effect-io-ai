Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.bodyJsonUnsafe

Sets a JSON request body using unsafe JSON encoding.

**When to use**

Use when the request body is known to be JSON-serializable and a synchronous
`HttpClientRequest` result is needed.

**Gotchas**

JSON encoding may throw instead of failing in the Effect error channel.

**Signature**

```ts
declare const bodyJsonUnsafe: { (body: unknown): (self: HttpClientRequest) => HttpClientRequest; (self: HttpClientRequest, body: unknown): HttpClientRequest; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpClientRequest.ts#L700)

Since v4.0.0