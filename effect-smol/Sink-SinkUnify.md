Package: `effect`<br />
Module: `Sink`<br />

## Sink.SinkUnify

Interface for Sink unification, used internally by the Effect type system
to provide proper type inference when using Sink with other Effect types.

**Example**

```ts
import type { Effect } from "effect"
import type * as Sink from "effect/Sink"
import type * as Unify from "effect/Unify"

// SinkUnify helps unify Sink and Effect types
declare const sink: Sink.Sink<number>
declare const effect: Effect.Effect<string>

// The unification system handles mixed operations
type Combined = Sink.SinkUnify<{ [Unify.typeSymbol]?: any }>
```

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L100)

Since v2.0.0