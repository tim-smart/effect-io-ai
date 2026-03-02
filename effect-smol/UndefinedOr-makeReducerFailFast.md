Package: `effect`<br />
Module: `UndefinedOr`<br />

## UndefinedOr.makeReducerFailFast

Creates a `Reducer` for `UndefinedOr<A>` by wrapping an existing `Reducer` with
fail-fast semantics for `UndefinedOr` values.

This function lifts a regular `Reducer` into the `UndefinedOr` context, allowing
you to use existing `Reducer`s with `UndefinedOr` values while maintaining the
fail-fast behavior where any `undefined` value causes the entire reduction to fail.

The initial value is `some(reducer.initialValue)`, ensuring the `Reducer`
starts with a valid `UndefinedOr` value.

**Behavior:**
- Fails fast (returns `undefined`) if any operand is `undefined`
- Uses the underlying reducer's combine logic when both values are present

**See**

- `makeCombinerFailFast` if you only have a `Combiner` and want to
lift it to `UndefinedOr` values.

**Signature**

```ts
declare const makeReducerFailFast: <A>(reducer: Reducer.Reducer<A>) => Reducer.Reducer<A | undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UndefinedOr.ts#L172)

Since v4.0.0