# mapInputEffect

Effectfully transforms this sink's input elements.

To import and use `mapInputEffect` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.mapInputEffect
```

**Signature**

```ts
export declare const mapInputEffect: {
  <In0, In, E2, R2>(
    f: (input: In0) => Effect.Effect<In, E2, R2>
  ): <A, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A, In0, L, E2 | E, R2 | R>
  <A, In, L, E, R, In0, E2, R2>(
    self: Sink<A, In, L, E, R>,
    f: (input: In0) => Effect.Effect<In, E2, R2>
  ): Sink<A, In0, L, E | E2, R | R2>
}
```
