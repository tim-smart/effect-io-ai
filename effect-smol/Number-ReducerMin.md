Package: `effect`<br />
Module: `Number`<br />

## Number.ReducerMin

A `Reducer` for reducing `number`s by keeping the minimum value.

**When to use**

Use to keep the smallest number through APIs that consume a `Reducer`.

**Details**

The reducer starts from `Infinity`, so reducing an empty collection returns
`Infinity`.

**Gotchas**

`NaN` values propagate through `Math.min`.

**See**

- `ReducerMax` for keeping the largest number
- `min` for comparing two numbers directly

**Signature**

```ts
declare const ReducerMin: Reducer.Reducer<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L905)

Since v4.0.0