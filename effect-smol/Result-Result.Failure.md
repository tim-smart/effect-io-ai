Package: `effect`<br />
Module: `Result`<br />

## Result.Result.Failure

Extracts the failure type `E` from `Result<A, E>`.

**Signature**

```ts
type Failure<T> = [T] extends [Result<infer _A, infer _E>] ? _E : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L276)

Since v4.0.0