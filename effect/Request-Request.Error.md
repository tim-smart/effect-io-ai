Package: `effect`<br />
Module: `Request`<br />

## Request.Request.Error

A utility type to extract the error type from a `Request`.

**Signature**

```ts
type Error<T> = [T] extends [Request<infer _A, infer _E>] ? _E : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Request.ts#L69)

Since v2.0.0