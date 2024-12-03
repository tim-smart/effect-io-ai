# mapEffect

Effectfully transforms this sink's result.

To import and use `mapEffect` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.mapEffect
```

**Signature**

```ts
export declare const mapEffect: {
  <A, A2, E2, R2>(
    f: (a: A) => Effect.Effect<A2, E2, R2>
  ): <In, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A2, In, L, E2 | E, R2 | R>
  <A, In, L, E, R, A2, E2, R2>(
    self: Sink<A, In, L, E, R>,
    f: (a: A) => Effect.Effect<A2, E2, R2>
  ): Sink<A2, In, L, E | E2, R | R2>
}
```
