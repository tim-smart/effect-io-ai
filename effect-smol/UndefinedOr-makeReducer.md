Package: `effect`<br />
Module: `UndefinedOr`<br />

## UndefinedOr.makeReducer

Creates a `Reducer` for `UndefinedOr<A>` that prioritizes the first non-`undefined`
value and combines values when both operands are present.

This `Reducer` is useful for scenarios where you want to:
- Take the first available value (like a fallback chain)
- Combine values when both are present
- Maintain a `undefined` state only when all values are `undefined`

The `initialValue` of the `Reducer` is `undefined`.

**Behavior:**
- `undefined` + `undefined` = `undefined`
- `a` + `undefined` = `a` (first value wins)
- `undefined` + `b` = `b` (second value wins)
- `a` + `b` = `a + b` (values combined)

**Signature**

```ts
declare const makeReducer: <A>(combiner: Combiner.Combiner<A>) => Reducer.Reducer<A | undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UndefinedOr.ts#L116)

Since v4.0.0