Package: `effect`<br />
Module: `UndefinedOr`<br />

## UndefinedOr.makeReducer

Creates a `Reducer` for `UndefinedOr<A>` that prioritizes the first non-`undefined`
value and combines values when both operands are present.

**When to use**

Use to take the first available value like a fallback chain, combining values
only when both operands are present.

**Details**

- `undefined` + `undefined` -> `undefined`
- `a` + `undefined` -> `a` (first value wins)
- `undefined` + `b` -> `b` (second value wins)
- `a` + `b` -> `combiner.combine(a, b)`
- Initial value is `undefined`

**Signature**

```ts
declare const makeReducer: <A>(combiner: Combiner.Combiner<A>) => Reducer.Reducer<A | undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UndefinedOr.ts#L217)

Since v4.0.0