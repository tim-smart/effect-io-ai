Package: `effect`<br />
Module: `Sink`<br />

## Sink.SinkUnify

Type-level unification support for `Sink` values.

This preserves the result, input, leftover, error, and service type
parameters when Effect's `Unify` machinery normalizes generic values that
include sinks. Users normally do not need to reference this interface
directly.

**Signature**

```ts
export interface SinkUnify<A extends { [Unify.typeSymbol]?: any }> extends Effect.EffectUnify<A> {
  Sink?: () => A[Unify.typeSymbol] extends
    | Sink<
      infer A,
      infer In,
      infer L,
      infer E,
      infer R
    >
    | infer _ ? Sink<A, In, L, E, R>
    : never
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L125)

Since v2.0.0