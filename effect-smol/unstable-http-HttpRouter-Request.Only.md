Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.Request.Only

Extracts the payload types from request-level markers that have the supplied
kind.

**Signature**

```ts
type Only<Kind, A> = A extends Request<Kind, infer T> ? T : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L771)

Since v4.0.0