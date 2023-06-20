# fromEffect

Either emits the success value of this effect or terminates the stream
with the failure value of this effect.

To import and use `fromEffect` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.fromEffect
```

**Signature**

```ts
export declare const fromEffect: <R, E, A>(effect: Effect.Effect<R, E, A>) => Stream<R, E, A>
```
