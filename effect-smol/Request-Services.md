Package: `effect`<br />
Module: `Request`<br />

## Request.Services

A utility type to extract the requirements type from a `Request`.

**Signature**

```ts
type Services<T> = [T] extends [Request<infer _A, infer _E, infer _R>] ? _R
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Request.ts#L142)

Since v4.0.0