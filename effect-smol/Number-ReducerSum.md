Package: `effect`<br />
Module: `Number`<br />

## Number.ReducerSum

Reducer for combining `number`s using addition.

**When to use**

Use to sum many numbers through APIs that consume a `Reducer`.

**Details**

The reducer starts from `0`, so `combineAll([])` returns `0`.

**See**

- `sumAll` for summing an iterable directly
- `ReducerMultiply` for multiplying number values

**Signature**

```ts
declare const ReducerSum: Reducer.Reducer<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L801)

Since v4.0.0