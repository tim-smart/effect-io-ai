# fromEffect

Creates an effect from `Effect<R, E, A>` that does not fail, but succeeds with
the `Take<E, A>`. Error from stream when pulling is converted to
`Take.failCause`. Creates a single value chunk.

Part of the `Take` module, imported from `@effect/stream/Take`.

**Signature**

```ts
export declare const fromEffect: <R, E, A>(effect: Effect.Effect<R, E, A>) => Effect.Effect<R, never, Take<E, A>>
```
