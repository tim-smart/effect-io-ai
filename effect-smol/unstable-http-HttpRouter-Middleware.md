Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.Middleware

Composable descriptor for route-scoped HTTP router middleware.

**Details**

Its `layer` can be provided to route layers, and `combine` composes middleware
while tracking provided services, handled errors, and remaining requirements at
the type level.

**Signature**

```ts
export interface Middleware<
  Config extends {
    provides: any
    handles: any
    error: any
    requires: any
    layerError: any
    layerRequires: any
  }
> {
  readonly [MiddlewareTypeId]: Config

  readonly layer: [Config["requires"]] extends [never] ? Layer.Layer<
      Request.From<"Requires", Config["provides"]>,
      Config["layerError"],
      | Config["layerRequires"]
      | Request.From<"Requires", Config["requires"]>
      | Request.From<"Error", Config["error"]>
    >
    : "Need to .combine(middleware) that satisfy the missing request dependencies"

  readonly combine: <
    Config2 extends {
      provides: any
      handles: any
      error: any
      requires: any
      layerError: any
      layerRequires: any
    }
  >(other: Middleware<Config2>) => Middleware<{
    provides: Config2["provides"] | Config["provides"]
    handles: Config2["handles"] | Config["handles"]
    error: Config2["error"] | Exclude<Config["error"], Config2["handles"]>
    requires: Exclude<Config["requires"], Config2["provides"]> | Config2["requires"]
    layerError: Config["layerError"] | Config2["layerError"]
    layerRequires: Config["layerRequires"] | Config2["layerRequires"]
  }>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L824)

Since v4.0.0