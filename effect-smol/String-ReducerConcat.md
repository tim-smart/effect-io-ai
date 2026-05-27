Package: `effect`<br />
Module: `String`<br />

## String.ReducerConcat

A `Reducer` for concatenating `string`s.

**When to use**

Use to concatenate many strings through APIs that consume a `Reducer`.

**Details**

The reducer starts from `""`, so combining an empty collection returns `""`.

**See**

- `concat` for concatenating two strings directly

**Signature**

```ts
declare const ReducerConcat: Reducer.Reducer<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L1483)

Since v4.0.0