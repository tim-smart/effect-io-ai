Package: `effect`<br />
Module: `Stream`<br />

## Stream.merge

Merges this stream and the specified stream together.

New produced stream will terminate when both specified stream terminate if
no termination strategy is specified.

**Example**

```ts
import { Effect, Schedule, Stream } from "effect"

const s1 = Stream.make(1, 2, 3).pipe(
  Stream.schedule(Schedule.spaced("100 millis"))
)
const s2 = Stream.make(4, 5, 6).pipe(
  Stream.schedule(Schedule.spaced("200 millis"))
)

const stream = Stream.merge(s1, s2)

Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 1, 4, 2, 3, 5, 6 ] }
```

**Signature**

```ts
declare const merge: { <A2, E2, R2>(that: Stream<A2, E2, R2>, options?: { readonly haltStrategy?: HaltStrategy.HaltStrategyInput | undefined; } | undefined): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>, options?: { readonly haltStrategy?: HaltStrategy.HaltStrategyInput | undefined; } | undefined): Stream<A | A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2973)

Since v2.0.0