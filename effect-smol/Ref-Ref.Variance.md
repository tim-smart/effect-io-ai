Package: `effect`<br />
Module: `Ref`<br />

## Ref.Ref.Variance

Variance interface for Ref types, defining the type parameter constraints.

**Example**

```ts
import { Effect, Ref } from "effect"

// This interface defines the invariant nature of Ref's type parameter
// A Ref<A> is both a producer and consumer of A
const program = Effect.gen(function*() {
  const ref = yield* Ref.make(42)

  // Ref is invariant - it can both produce and consume numbers
  const value = yield* Ref.get(ref) // produces number
  yield* Ref.set(ref, value + 1) // consumes number
})
```

**Signature**

```ts
export interface Variance<in out A> {
    readonly [TypeId]: {
      readonly _A: Invariant<A>
    }
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ref.ts#L104)

Since v2.0.0