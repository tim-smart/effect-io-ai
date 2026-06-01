Package: `effect`<br />
Module: `UndefinedOr`<br />

## UndefinedOr.makeReducer

Creates a `Reducer` for `UndefinedOr<A>` that prioritizes the first non-`undefined`
value and combines values when both operands are present.

**When to use**

Use when you need to reduce values that may be `undefined`, keeping the
first defined value as a fallback and combining only when both operands are
defined.

**Details**

Combining `undefined` with `undefined` returns `undefined`. Combining a
defined value with `undefined` keeps the defined value, so the first defined
value wins when only one side is present. When both values are defined, they
are combined with `combiner.combine`. The reducer's initial value is
`undefined`.

**Signature**

```ts
declare const makeReducer: <A>(combiner: Combiner.Combiner<A>) => Reducer.Reducer<A | undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UndefinedOr.ts#L218)

Since v4.0.0