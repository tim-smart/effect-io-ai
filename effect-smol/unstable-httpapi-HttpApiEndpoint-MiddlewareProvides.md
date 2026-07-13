Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.MiddlewareProvides

Computes the services provided by the middleware attached to an endpoint.

**Signature**

```ts
type MiddlewareProvides<Endpoint> = HttpApiMiddleware.Provides<Middleware<Endpoint>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L409)

Since v4.0.0