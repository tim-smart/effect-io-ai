Package: `effect`<br />
Module: `Result`<br />

## Result.Result.Success

Extracts the success type `A` from `Result<A, E>`.

**Signature**

```ts
type Success<T> = [T] extends [Result<infer _A, infer _E>] ? _A : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L283)

Since v4.0.0