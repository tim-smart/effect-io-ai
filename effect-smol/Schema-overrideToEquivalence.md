Package: `effect`<br />
Module: `Schema`<br />

## Schema.overrideToEquivalence

Overrides the equivalence derivation for a schema by supplying a custom
`Equivalence`. Use this when the default structural equivalence derived by
`toEquivalence` is not appropriate for a type.

**Signature**

```ts
declare const overrideToEquivalence: <S extends Top>(toEquivalence: () => Equivalence.Equivalence<S["Type"]>) => (self: S) => S["~rebuild.out"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10368)

Since v4.0.0