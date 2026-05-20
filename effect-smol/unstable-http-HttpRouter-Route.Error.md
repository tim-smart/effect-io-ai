Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.Route.Error

Extracts the error type produced by a `Route` handler.

**Signature**

```ts
type Error<R> = R extends Route<infer E, infer _R> ? E : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L622)

Since v4.0.0