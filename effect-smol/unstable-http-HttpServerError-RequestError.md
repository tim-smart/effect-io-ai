Package: `effect`<br />
Module: `HttpServerError`<br />

## HttpServerError.RequestError

Union of errors that are tied directly to an incoming server request.

**Signature**

```ts
type RequestError = RequestParseError | RouteNotFound | InternalError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerError.ts#L223)

Since v4.0.0