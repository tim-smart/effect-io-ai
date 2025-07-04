Package: `@effect/platform`<br />
Module: `HttpLayerRouter`<br />

## HttpLayerRouter.unhandled

A pseudo-error type that represents an error that should be not handled by
the middleware.

**Signature**

```ts
export interface unhandled {
  readonly _: unique symbol
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpLayerRouter.ts#L542)

Since v1.0.0