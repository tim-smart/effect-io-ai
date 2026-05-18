Package: `effect`<br />
Module: `Channel`<br />

## Channel.ChannelUnify

Type-level unification support for `Channel` values.

This preserves all `Channel` type parameters when `Unify` normalizes unions
or generic return types that include channels. Users normally do not need to
reference this interface directly.

**Signature**

```ts
export interface ChannelUnify<A extends { [Unify.typeSymbol]?: any }> extends Effect.EffectUnify<A> {
  Channel?: () => A[Unify.typeSymbol] extends
    | Channel<infer OutElem, infer OutErr, infer OutDone, infer InElem, infer InErr, infer InDone, infer Env>
    | infer _ ? Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>
    : never
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L207)

Since v2.0.0