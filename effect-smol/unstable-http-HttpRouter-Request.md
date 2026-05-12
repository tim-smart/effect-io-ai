Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.Request

Represents a request-level dependency, that needs to be provided by
middleware.

**Signature**

```ts
export interface Request<Kind extends string, T> {
  readonly _: unique symbol
  readonly kind: Kind
  readonly type: T
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L613)

Since v4.0.0