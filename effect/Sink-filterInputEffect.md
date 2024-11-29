# filterInputEffect

Effectfully filter the input of this sink using the specified predicate.

To import and use `filterInputEffect` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.filterInputEffect
undefined

**Signature**

```ts
export declare const filterInputEffect: {
  <In, In1 extends In, E2, R2>(
    f: (input: In1) => Effect.Effect<boolean, E2, R2>
  ): <A, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A, In1, L, E2 | E, R2 | R>
  <A, In, L, E, R, In1 extends In, E2, R2>(
    self: Sink<A, In, L, E, R>,
    f: (input: In1) => Effect.Effect<boolean, E2, R2>
  ): Sink<A, In1, L, E | E2, R | R2>
}
```
