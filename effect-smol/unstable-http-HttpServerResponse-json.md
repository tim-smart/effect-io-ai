Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.json

Creates a JSON HTTP response.

The body is serialized with `JSON.stringify`; serialization errors are captured
as `HttpBodyError` failures.

**Signature**

```ts
declare const json: (body: unknown, options?: Options.WithContentType | undefined) => Effect.Effect<HttpServerResponse, Body.HttpBodyError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L288)

Since v4.0.0