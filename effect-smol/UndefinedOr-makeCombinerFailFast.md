Package: `effect`<br />
Module: `UndefinedOr`<br />

## UndefinedOr.makeCombinerFailFast

Creates a `Combiner` for `UndefinedOr<A>` that only combines values when both
operands are not `undefined`, failing fast if either is `undefined`.

This `Combiner` is useful for scenarios where you need both values to be
present to perform an operation, such as:
- Mathematical operations that require two operands
- Data validation that needs both fields
- Operations that can't proceed with partial data

**Behavior:**
- `undefined` + `undefined` = `undefined`
- `a` + `undefined` = `undefined` (fails fast)
- `undefined` + `b` = `undefined` (fails fast)
- `a` + `b` = `a + b` (values combined)

**See**

- `makeReducerFailFast` if you have a `Reducer` and want to lift it
to `UndefinedOr` values.

**Signature**

```ts
declare const makeCombinerFailFast: <A>(combiner: Combiner.Combiner<A>) => Combiner.Combiner<A | undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UndefinedOr.ts#L145)

Since v4.0.0