Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.ReducerOr

A `Reducer` for combining `boolean`s using OR.

**When to use**

Use to reduce boolean values where the result should be `true` if any
combined value is `true`.

**Details**

The `initialValue` is `false`.

**See**

- `ReducerAnd` for reducing with AND semantics
- `some` for checking an iterable directly

**Signature**

```ts
declare const ReducerOr: Reducer.Reducer<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Boolean.ts#L528)

Since v4.0.0