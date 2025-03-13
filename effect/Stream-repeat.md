Package: `effect`<br />
Module: `Stream`<br />

## Stream.repeat

Repeats the entire stream using the specified schedule. The stream will
execute normally, and then repeat again according to the provided schedule.

**Example**

```ts
import { Effect, Schedule, Stream } from "effect"

const stream = Stream.repeat(Stream.succeed(1), Schedule.forever)

// Effect.runPromise(Stream.runCollect(stream.pipe(Stream.take(5)))).then(console.log)
// { _id: 'Chunk', values: [ 1, 1, 1, 1, 1 ] }
```

**Signature**

```ts
declare const repeat: { <B, R2>(schedule: Schedule.Schedule<B, unknown, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R2 | R>; <A, E, R, B, R2>(self: Stream<A, E, R>, schedule: Schedule.Schedule<B, unknown, R2>): Stream<A, E, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3869)

Since v2.0.0