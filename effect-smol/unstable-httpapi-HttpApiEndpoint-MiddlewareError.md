Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.MiddlewareError

Computes the error types that can be produced by the middleware attached to an
endpoint.

**Signature**

```ts
type MiddlewareError<Endpoint> = HttpApiMiddleware.Error<Middleware<Endpoint>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L426)

Since v4.0.0