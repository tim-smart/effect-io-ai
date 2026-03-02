Package: `effect`<br />
Module: `Option`<br />

## Option.OptionUnify

Internal unification interface for `Option` types. Used by the Effect
library's type system for type-level operations.

**Signature**

```ts
export interface OptionUnify<A extends { [Unify.typeSymbol]?: any }> {
  Option?: () => A[Unify.typeSymbol] extends Option<infer A0> | infer _ ? Option<A0> : never
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L208)

Since v2.0.0