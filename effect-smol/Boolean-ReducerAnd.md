Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.ReducerAnd

Reducer for combining `boolean`s using AND.

**When to use**

Use to require every accumulated boolean to be `true` through APIs that
consume a `Reducer`.

**Details**

The `initialValue` is `true`, so `combineAll([])` returns `true`.

**Gotchas**

`combineAll` uses the default left-to-right `Reducer.make` fold and does not
short-circuit on `false`.

**See**

- `ReducerOr` for reducing with OR semantics
- `every` for checking an iterable directly

**Signature**

```ts
declare const ReducerAnd: Reducer.Reducer<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Boolean.ts#L461)

Since v4.0.0