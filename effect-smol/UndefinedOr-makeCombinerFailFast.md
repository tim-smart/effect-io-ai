Package: `effect`<br />
Module: `UndefinedOr`<br />

## UndefinedOr.makeCombinerFailFast

Creates a `Combiner` for `A | undefined` that combines values only when both
operands are defined.

**When to use**

Use to lift a `Combiner` so any `undefined` operand makes the combined result
`undefined`.

**Details**

- `undefined` combined with any value returns `undefined`
- Any value combined with `undefined` returns `undefined`
- `a` combined with `b` returns `combiner.combine(a, b)`

**See**

- `makeReducerFailFast` if you have a `Reducer` and want to lift it
to `UndefinedOr` values.

**Signature**

```ts
declare const makeCombinerFailFast: <A>(combiner: Combiner.Combiner<A>) => Combiner.Combiner<A | undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UndefinedOr.ts#L246)

Since v4.0.0