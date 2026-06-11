Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.ReducerSum

Reducer for combining `bigint`s using addition.

**When to use**

Use to sum many `bigint` values through APIs that consume a `Reducer`.

**Details**

The initial value is `0n`, so `combineAll([])` returns `0n`.

**See**

- `sumAll` for summing an iterable directly
- `ReducerMultiply` for multiplying `bigint` values

**Signature**

```ts
declare const ReducerSum: Reducer.Reducer<bigint>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L973)

Since v4.0.0