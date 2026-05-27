Package: `effect`<br />
Module: `Effect`<br />

## Effect.EffectUnify

Type-level unification support for `Effect` values.

**Signature**

```ts
export interface EffectUnify<A extends { [Unify.typeSymbol]?: any }> {
  Effect?: () => A[Unify.typeSymbol] extends
    | Effect<infer A0, infer E0, infer R0>
    | infer _ ? Effect<A0, E0, R0>
    : never
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L197)

Since v2.0.0