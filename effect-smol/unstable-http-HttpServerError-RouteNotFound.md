Package: `effect`<br />
Module: `HttpServerError`<br />

## HttpServerError.RouteNotFound

Error indicating that no route matched the incoming request.

**Details**

When converted to a response it produces an empty `404` response, and it is
ignored by the error reporter.

**Signature**

```ts
declare class RouteNotFound
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerError.ts#L149)

Since v4.0.0