Package: `effect`<br />
Module: `Stream`<br />

## Stream.onStart

Adds an effect to be executed at the start of the stream.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make(1, 2, 3).pipe(
  Stream.onStart(Console.log("Stream started")),
  Stream.map((n) => n * 2),
  Stream.tap((n) => Console.log(`after mapping: ${n}`))
)

Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// Stream started
// after mapping: 2
// after mapping: 4
// after mapping: 6
// { _id: 'Chunk', values: [ 2, 4, 6 ] }
```

**Signature**

```ts
declare const onStart: { <_, E2, R2>(effect: Effect.Effect<_, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>; <A, E, R, _, E2, R2>(self: Stream<A, E, R>, effect: Effect.Effect<_, E2, R2>): Stream<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3240)

Since v3.6.0