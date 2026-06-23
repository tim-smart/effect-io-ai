Package: `effect`<br />
Module: `HttpMiddleware`<br />

## HttpMiddleware.TracerDisabledWhen

Context reference for a predicate that disables server-side tracing for matching requests.

**Signature**

```ts
declare const TracerDisabledWhen: Context.Reference<Predicate<HttpServerRequest>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpMiddleware.ts#L103)

Since v4.0.0