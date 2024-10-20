# fromEffect

Either emits the success value of this effect or terminates the stream
with the failure value of this effect.

To import and use `fromEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.fromEffect
```

**Example**

```ts
import { Effect, Random, Stream } from "effect"

const stream = Stream.fromEffect(Random.nextInt)

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// Example Output: { _id: 'Chunk', values: [ 922694024 ] }
```

**Signature**

```ts
export declare const fromEffect: <A, E, R>(effect: Effect.Effect<A, E, R>) => Stream<A, E, R>
```
