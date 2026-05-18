Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.Request.From

Wraps a type in a request-level marker of the supplied kind.

**Signature**

```ts
type From<Kind, R> = R extends infer T ? Request<Kind, T> : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L741)

Since v4.0.0