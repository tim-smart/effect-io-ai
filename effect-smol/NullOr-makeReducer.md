Package: `effect`<br />
Module: `NullOr`<br />

## NullOr.makeReducer

Creates a `Reducer` for `NullOr<A>` that prioritizes the first non-`null`
value and combines values when both operands are present.

This `Reducer` is useful for scenarios where you want to:
- Take the first available value (like a fallback chain)
- Combine values when both are present
- Maintain a `null` state only when all values are `null`

The `initialValue` of the `Reducer` is `null`.

**Behavior:**
- `null` + `null` = `null`
- `a` + `null` = `a` (first value wins)
- `null` + `b` = `b` (second value wins)
- `a` + `b` = `a + b` (values combined)

**Signature**

```ts
declare const makeReducer: <A>(combiner: Combiner.Combiner<A>) => Reducer.Reducer<A | null>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/NullOr.ts#L114)

Since v4.0.0