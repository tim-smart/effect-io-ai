# repeatEffect

Creates a stream from an effect producing a value of type `A` which repeats
forever.

To import and use `repeatEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.repeatEffect
```

**Signature**

```ts
export declare const repeatEffect: <A, E, R>(effect: Effect.Effect<A, E, R>) => Stream<A, E, R>
```
