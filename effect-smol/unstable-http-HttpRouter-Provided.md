Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.Provided

Services provided by the HTTP router, which are available in the
request context.

**Signature**

```ts
type Provided = | HttpServerRequest.HttpServerRequest
  | Scope.Scope
  | HttpServerRequest.ParsedSearchParams
  | RouteContext
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L651)

Since v4.0.0