Package: `effect`<br />
Module: `HttpServerError`<br />

## HttpServerError.ResponseError

Error describing a failure related to an HTTP response.

It carries the request and response involved in the failure. When converted to
a response it produces an empty `500` response.

**Signature**

```ts
declare class ResponseError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerError.ts#L198)

Since v4.0.0