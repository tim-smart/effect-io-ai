# fromIterableEffect

Creates a stream from an effect producing a value of type `Iterable<A>`.

To import and use `fromIterableEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.fromIterableEffect
```

**Signature**

```ts
export declare const fromIterableEffect: <A, E, R>(effect: Effect.Effect<Iterable<A>, E, R>) => Stream<A, E, R>
```
