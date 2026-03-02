Package: `effect`<br />
Module: `Stream`<br />

## Stream.StreamUnify

Type-level unification hook for Stream within the Effect type system.

**Example**

```ts
import { Effect, Stream } from "effect"

// StreamUnify helps unify Stream and Effect types
declare const stream: Stream.Stream<number>
declare const effect: Effect.Effect<string>

// The unification system handles mixed operations
const combined = Effect.zip(stream.pipe(Stream.runCollect), effect)
```

**Signature**

```ts
export interface StreamUnify<A extends { [Unify.typeSymbol]?: any }> extends Effect.EffectUnify<A> {
  Stream?: () => A[Unify.typeSymbol] extends Stream<infer A0, infer E0, infer R0> | infer _ ? Stream<A0, E0, R0> : never
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L116)

Since v2.0.0