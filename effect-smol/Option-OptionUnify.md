Package: `effect`<br />
Module: `Option`<br />

## Option.OptionUnify

Type-level unification support for `Option` values.

**Details**

This is used by Effect's `Unify` machinery to preserve the contained value
type when generic code returns or combines `Option` values. Users normally
do not need to reference this interface directly.

**Signature**

```ts
export interface OptionUnify<A extends { [Unify.typeSymbol]?: any }> {
  Option?: () => A[Unify.typeSymbol] extends Option<infer A0> | infer _ ? Option<A0> : never
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L207)

Since v2.0.0