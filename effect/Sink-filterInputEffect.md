# filterInputEffect

Effectfully filter the input of this sink using the specified predicate.

To import and use `filterInputEffect` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.filterInputEffect
```

**Signature**

```ts
export declare const filterInputEffect: {
  <R2, E2, In, In1 extends In>(
    f: (input: In1) => Effect.Effect<R2, E2, boolean>
  ): <R, E, L, Z>(self: Sink<R, E, In, L, Z>) => Sink<R2 | R, E2 | E, In1, L, Z>
  <R, E, L, Z, R2, E2, In, In1 extends In>(
    self: Sink<R, E, In, L, Z>,
    f: (input: In1) => Effect.Effect<R2, E2, boolean>
  ): Sink<R | R2, E | E2, In1, L, Z>
}
```
