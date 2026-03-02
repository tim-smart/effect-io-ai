Package: `effect`<br />
Module: `NullOr`<br />

## NullOr.makeReducerFailFast

Creates a `Reducer` for `NullOr<A>` by wrapping an existing `Reducer` with
fail-fast semantics for `NullOr` values.

This function lifts a regular `Reducer` into the `NullOr` context, allowing
you to use existing `Reducer`s with `NullOr` values while maintaining the
fail-fast behavior where any `null` value causes the entire reduction to fail.

The initial value is `some(reducer.initialValue)`, ensuring the `Reducer`
starts with a valid `NullOr` value.

**Behavior:**
- Fails fast (returns `null`) if any operand is `null`
- Uses the underlying reducer's combine logic when both values are present

**See**

- `makeCombinerFailFast` if you only have a `Combiner` and want to
lift it to `NullOr` values.

**Signature**

```ts
declare const makeReducerFailFast: <A>(reducer: Reducer.Reducer<A>) => Reducer.Reducer<A | null>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/NullOr.ts#L170)

Since v4.0.0