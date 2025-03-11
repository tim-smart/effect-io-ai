## repeatEffect

Creates a stream from an effect producing a value of type `A` which repeats
forever.

**Example**

```ts
import { Effect, Random, Stream } from "effect"

const stream = Stream.repeatEffect(Random.nextInt)

// Effect.runPromise(Stream.runCollect(stream.pipe(Stream.take(5)))).then(console.log)
// Example Output: { _id: 'Chunk', values: [ 3891571149, 4239494205, 2352981603, 2339111046, 1488052210 ] }
```

**Signature**

```ts
declare const repeatEffect: <A, E, R>(effect: Effect.Effect<A, E, R>) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3891)

Since v2.0.0