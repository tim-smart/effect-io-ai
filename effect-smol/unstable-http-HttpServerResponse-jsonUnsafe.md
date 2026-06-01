Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.jsonUnsafe

Creates a JSON HTTP response synchronously.

**When to use**

Use when the response body is known to be JSON-serializable and you need a
synchronous `HttpServerResponse`.

**Gotchas**

Unlike `json`, serialization errors from `JSON.stringify` are not captured in
`Effect`.

**Signature**

```ts
declare const jsonUnsafe: (body: unknown, options?: Options.WithContentType | undefined) => HttpServerResponse
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L386)

Since v4.0.0