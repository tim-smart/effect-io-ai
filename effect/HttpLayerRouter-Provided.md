Package: `@effect/platform`<br />
Module: `HttpLayerRouter`<br />

## HttpLayerRouter.Provided

Services provided by the HTTP router, which are available in the
request context.

**Signature**

```ts
type Provided = | HttpServerRequest.HttpServerRequest
  | Scope.Scope
  | HttpServerRequest.ParsedSearchParams
  | RouteContext
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpLayerRouter.ts#L539)

Since v1.0.0