Package: `effect`<br />
Module: `Number`<br />

## Number.ReducerMax

Reducer for reducing `number`s by keeping the maximum value.

**When to use**

Use to keep the largest number through APIs that consume a `Reducer`.

**Details**

The reducer starts from `-Infinity`, so reducing an empty collection returns
`-Infinity`.

**Gotchas**

`NaN` values propagate through `Math.max`.

**See**

- `ReducerMin` for keeping the smallest number
- `max` for comparing two numbers directly

**Signature**

```ts
declare const ReducerMax: Reducer.Reducer<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L836)

Since v4.0.0