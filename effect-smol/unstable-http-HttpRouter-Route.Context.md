Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.Route.Context

Extracts the context requirements of a `Route` handler.

**Signature**

```ts
type Context<T> = T extends Route<infer _E, infer R> ? R : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L626)

Since v4.0.0