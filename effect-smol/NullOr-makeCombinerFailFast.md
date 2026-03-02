Package: `effect`<br />
Module: `NullOr`<br />

## NullOr.makeCombinerFailFast

Creates a `Combiner` for `NullOr<A>` that only combines values when both
operands are not `null`, failing fast if either is `null`.

This `Combiner` is useful for scenarios where you need both values to be
present to perform an operation, such as:
- Mathematical operations that require two operands
- Data validation that needs both fields
- Operations that can't proceed with partial data

**Behavior:**
- `null` + `null` = `null`
- `a` + `null` = `null` (fails fast)
- `null` + `b` = `null` (fails fast)
- `a` + `b` = `a + b` (values combined)

**See**

- `makeReducerFailFast` if you have a `Reducer` and want to lift it
to `NullOr` values.

**Signature**

```ts
declare const makeCombinerFailFast: <A>(combiner: Combiner.Combiner<A>) => Combiner.Combiner<A | null>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/NullOr.ts#L143)

Since v4.0.0