Package: `effect`<br />
Module: `Request`<br />

## Request.Request

A `Request<A, E>` is a request from a data source for a value of type `A`
that may fail with an `E`.

**Signature**

```ts
export interface Request<out A, out E = never> extends Request.Variance<A, E> {}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Request.ts#L38)

Since v2.0.0