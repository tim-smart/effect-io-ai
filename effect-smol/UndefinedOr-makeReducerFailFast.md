Package: `effect`<br />
Module: `UndefinedOr`<br />

## UndefinedOr.makeReducerFailFast

Creates a `Reducer` for `A | undefined` by wrapping an existing reducer with
fail-fast semantics.

**When to use**

- Wrapping an existing `Reducer` to work with `A | undefined` values
- Reductions where any `undefined` value should abort the entire result

**Details**

- Initial value is the wrapped reducer's `initialValue`
- Combining two defined values delegates to the wrapped reducer
- If the accumulator or next value is `undefined`, the reduction returns `undefined`

**See**

- `makeCombinerFailFast` if you only have a `Combiner` and want to
lift it to `UndefinedOr` values.

**Signature**

```ts
declare const makeReducerFailFast: <A>(reducer: Reducer.Reducer<A>) => Reducer.Reducer<A | undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UndefinedOr.ts#L189)

Since v4.0.0