Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.CombinerMin

Combiner that returns the minimum `bigint`.

**When to use**

Use to keep the smallest `bigint` through APIs that consume a `Combiner`.

**See**

- `CombinerMax` for keeping the largest `bigint`
- `min` for comparing two `bigint` values directly

**Signature**

```ts
declare const CombinerMin: Combiner.Combiner<bigint>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L1029)

Since v4.0.0