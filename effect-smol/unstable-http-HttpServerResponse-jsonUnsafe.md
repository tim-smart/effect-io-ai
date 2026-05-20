Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.jsonUnsafe

Creates a JSON HTTP response synchronously.

**Gotchas**

Unlike `json`, serialization errors from `JSON.stringify` are not captured in
`Effect`.

**Signature**

```ts
declare const jsonUnsafe: (body: unknown, options?: Options.WithContentType | undefined) => HttpServerResponse
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L359)

Since v4.0.0