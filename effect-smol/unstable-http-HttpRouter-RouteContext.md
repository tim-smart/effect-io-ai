Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.RouteContext

Service for the matched HTTP route in the current request.

**When to use**

Use to read captured path parameters and route metadata while handling a
request matched by the router.

**Details**

It provides the route definition and the path parameters captured by the route
matcher.

**Signature**

```ts
declare class RouteContext
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L276)

Since v4.0.0