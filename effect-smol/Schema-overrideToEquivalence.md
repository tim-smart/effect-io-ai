Package: `effect`<br />
Module: `Schema`<br />

## Schema.overrideToEquivalence

**Technical Note**

This annotation cannot be added to `Annotations.Bottom` because it would make
the schema invariant.

**Signature**

```ts
declare const overrideToEquivalence: <S extends Top>(toEquivalence: () => Equivalence.Equivalence<S["Type"]>) => (self: S) => S["~rebuild.out"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8560)

Since v4.0.0