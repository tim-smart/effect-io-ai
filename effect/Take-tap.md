# tap

Returns an effect that effectfully "peeks" at the success of this take.

To import and use `tap` from the "Take" module:

```ts
import * as Take from 'effect/Take'

// Can be accessed like this
Take.tap
```

**Signature**

```ts
export declare const tap: {
  <A, R, E2, _>(f: (chunk: Chunk.Chunk<A>) => Effect.Effect<R, E2, _>): <E>(
    self: Take<E, A>
  ) => Effect.Effect<R, E2 | E, void>
  <E, A, R, E2, _>(self: Take<E, A>, f: (chunk: Chunk.Chunk<A>) => Effect.Effect<R, E2, _>): Effect.Effect<
    R,
    E | E2,
    void
  >
}
```
