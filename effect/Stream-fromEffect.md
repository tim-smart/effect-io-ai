# fromEffect

Either emits the success value of this effect or terminates the stream
with the failure value of this effect.

To import and use `fromEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.fromEffect
```

**Signature**

```ts
export declare const fromEffect: <A, E, R>(effect: Effect.Effect<A, E, R>) => Stream<A, E, R>
```
