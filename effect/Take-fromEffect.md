# fromEffect

Creates an effect from `Effect<A, E, R>` that does not fail, but succeeds with
the `Take<A, E>`. Error from stream when pulling is converted to
`Take.failCause`. Creates a single value chunk.

To import and use `fromEffect` from the "Take" module:

```ts
import * as Take from "effect/Take"
// Can be accessed like this
Take.fromEffect
```

**Signature**

```ts
export declare const fromEffect: <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<Take<A, E>, never, R>
```
