Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.prefixRoute

Returns a copy of a route with its path prefixed.

**Details**

The prefix is also tracked on the route so that, when the route handles a
request, the matched prefix can be removed from the request URL seen by the
handler.

**Signature**

```ts
declare const prefixRoute: { (prefix: string): <E, R>(self: Route<E, R>) => Route<E, R>; <E, R>(self: Route<E, R>, prefix: string): Route<E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L750)

Since v4.0.0