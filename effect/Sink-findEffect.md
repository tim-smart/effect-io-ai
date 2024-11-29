# findEffect

Creates a sink that produces values until one verifies the predicate `f`.

To import and use `findEffect` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.findEffect
undefined

**Signature**

```ts
export declare const findEffect: {
  <A, E2, R2>(
    f: (a: A) => Effect.Effect<boolean, E2, R2>
  ): <In, L extends In, E, R>(self: Sink<A, In, L, E, R>) => Sink<Option.Option<A>, In, L, E2 | E, R2 | R>
  <A, In, L extends In, E, R, E2, R2>(
    self: Sink<A, In, L, E, R>,
    f: (a: A) => Effect.Effect<boolean, E2, R2>
  ): Sink<Option.Option<A>, In, L, E | E2, R | R2>
}
```
