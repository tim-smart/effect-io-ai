Package: `@effect/platform`<br />
Module: `HttpLayerRouter`<br />

## HttpLayerRouter.Request

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpLayerRouter.ts#L507)

Since v1.0.0