Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromEffect

Either emits the success value of this effect or terminates the stream
with the failure value of this effect.

**Example**

```ts
import { Effect, Random, Stream } from "effect"

const stream = Stream.fromEffect(Random.nextInt)

Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// Example Output: { _id: 'Chunk', values: [ 922694024 ] }
```

**Signature**

```ts
declare const fromEffect: <A, E, R>(effect: Effect.Effect<A, E, R>) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2018)

Since v2.0.0