# tap

Returns an effect that effectfully "peeks" at the success of this take.

To import and use `tap` from the "Take" module:

```ts
import * as Take from "effect/Take"
// Can be accessed like this
Take.tap
```

**Signature**

```ts
export declare const tap: {
  <A, _, E2, R>(
    f: (chunk: Chunk.Chunk<A>) => Effect.Effect<_, E2, R>
  ): <E>(self: Take<A, E>) => Effect.Effect<void, E2 | E, R>
  <A, E, _, E2, R>(
    self: Take<A, E>,
    f: (chunk: Chunk.Chunk<A>) => Effect.Effect<_, E2, R>
  ): Effect.Effect<void, E | E2, R>
}
```
