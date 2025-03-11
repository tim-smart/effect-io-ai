## Request.Success

A utility type to extract the value type from a `Request`.

**Signature**

```ts
type Success<T> = [T] extends [Request<infer _A, infer _E>] ? _A : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Request.ts#L77)

Since v2.0.0