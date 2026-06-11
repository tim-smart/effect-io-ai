Package: `effect`<br />
Module: `HttpServerError`<br />

## HttpServerError.InternalError

Error describing an unexpected server-side failure while handling a request.

**Details**

When converted to a response it produces an empty `500` response.

**Signature**

```ts
declare class InternalError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerError.ts#L155)

Since v4.0.0