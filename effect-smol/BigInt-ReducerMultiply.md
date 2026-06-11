Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.ReducerMultiply

Reducer for combining `bigint`s using multiplication.

**When to use**

Use to multiply many `bigint` values through APIs that consume a `Reducer`.

**Details**

The initial value is `1n`, so `combineAll([])` returns `1n`.

**See**

- `multiplyAll` for multiplying an iterable directly
- `ReducerSum` for summing `bigint` values

**Signature**

```ts
declare const ReducerMultiply: Reducer.Reducer<bigint>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L992)

Since v4.0.0