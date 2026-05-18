Package: `effect`<br />
Module: `UndefinedOr`<br />

## UndefinedOr.makeCombinerFailFast

Creates a `Combiner` for `A | undefined` that combines values only when both
operands are defined.

If either operand is `undefined`, the combined result is `undefined`. When
both operands are defined, the wrapped combiner combines the two values.

**See**

- `makeReducerFailFast` if you have a `Reducer` and want to lift it
to `UndefinedOr` values.

**Signature**

```ts
declare const makeCombinerFailFast: <A>(combiner: Combiner.Combiner<A>) => Combiner.Combiner<A | undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UndefinedOr.ts#L155)

Since v4.0.0