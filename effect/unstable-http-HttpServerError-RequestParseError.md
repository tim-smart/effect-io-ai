Package: `effect`<br />
Module: `HttpServerError`<br />

## HttpServerError.RequestParseError

Error describing a failure to parse or read an incoming request.

**Details**

When converted to a response it produces an empty `400` response.

**Signature**

```ts
declare class RequestParseError
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpServerError.ts#L91)

Since v4.0.0