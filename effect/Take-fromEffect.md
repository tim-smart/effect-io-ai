# fromEffect

Creates an effect from `Effect<R, E, A>` that does not fail, but succeeds with
the `Take<E, A>`. Error from stream when pulling is converted to
`Take.failCause`. Creates a single value chunk.

To import and use `fromEffect` from the "Take" module:

```ts
import * as Take from "effect/Take"
// Can be accessed like this
Take.fromEffect
```

**Signature**

```ts
export declare const fromEffect: <R, E, A>(effect: Effect.Effect<R, E, A>) => Effect.Effect<R, never, Take<E, A>>
```
