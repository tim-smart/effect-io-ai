Package: `effect`<br />
Module: `Schema`<br />

## Schema.overrideToEquivalence

Overrides the equivalence derivation for a schema by supplying a custom
`Equivalence`.

**When to use**

Use when you need a custom equivalence instead of the default structural
equivalence derived by `toEquivalence`.

**Signature**

```ts
declare const overrideToEquivalence: <S extends Top>(toEquivalence: () => Equivalence.Equivalence<S["Type"]>) => (self: S) => S["Rebuild"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L13151)

Since v4.0.0