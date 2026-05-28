Package: `effect`<br />
Module: `Number`<br />

## Number.ReducerMultiply

Reducer for combining `number`s using multiplication.

**When to use**

Use to multiply many numbers through APIs that consume a `Reducer`.

**Details**

The reducer starts from `1`, so reducing an empty collection returns `1`.

**Gotchas**

Reducing an iterable short-circuits when it sees `0`, so later elements are
not consumed.

**See**

- `multiplyAll` for multiplying an iterable directly

**Signature**

```ts
declare const ReducerMultiply: Reducer.Reducer<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L852)

Since v4.0.0