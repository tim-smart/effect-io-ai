Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.CombinerMax

Combiner that returns the maximum `bigint`.

**When to use**

Use to keep the largest `bigint` when an API consumes a `Combiner`.

**See**

- `CombinerMin` for keeping the smallest `bigint`
- `max` for comparing two `bigint` values directly

**Signature**

```ts
declare const CombinerMax: Combiner.Combiner<bigint>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L1014)

Since v4.0.0