# mapInputEffect

Effectfully transforms this sink's input elements.

To import and use `mapInputEffect` from the "Sink" module:

```ts
import * as Sink from 'effect/Sink'

// Can be accessed like this
Sink.mapInputEffect
```

**Signature**

```ts
export declare const mapInputEffect: (<In0, R2, E2, In>(
  f: (input: In0) => Effect.Effect<R2, E2, In>
) => <R, E, L, Z>(self: Sink<R, E, In, L, Z>) => Sink<R2 | R, E2 | E, In0, L, Z>) &
  (<R, E, L, Z, In0, R2, E2, In>(
    self: Sink<R, E, In, L, Z>,
    f: (input: In0) => Effect.Effect<R2, E2, In>
  ) => Sink<R | R2, E | E2, In0, L, Z>)
```
