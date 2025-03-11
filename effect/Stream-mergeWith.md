## mergeWith

Merges this stream and the specified stream together to a common element
type with the specified mapping functions.

New produced stream will terminate when both specified stream terminate if
no termination strategy is specified.

**Example**

```ts
import { Effect, Schedule, Stream } from "effect"

const s1 = Stream.make("1", "2", "3").pipe(
  Stream.schedule(Schedule.spaced("100 millis"))
)
const s2 = Stream.make(4.1, 5.3, 6.2).pipe(
  Stream.schedule(Schedule.spaced("200 millis"))
)

const stream = Stream.mergeWith(s1, s2, {
  onSelf: (s) => parseInt(s),
  onOther: (n) => Math.floor(n)
})

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 1, 4, 2, 3, 5, 6 ] }
```

**Signature**

```ts
declare const mergeWith: { <A2, E2, R2, A, A3, A4>(other: Stream<A2, E2, R2>, options: { readonly onSelf: (a: A) => A3; readonly onOther: (a2: A2) => A4; readonly haltStrategy?: HaltStrategy.HaltStrategyInput | undefined; }): <E, R>(self: Stream<A, E, R>) => Stream<A3 | A4, E2 | E, R2 | R>; <A, E, R, A2, E2, R2, A3, A4>(self: Stream<A, E, R>, other: Stream<A2, E2, R2>, options: { readonly onSelf: (a: A) => A3; readonly onOther: (a2: A2) => A4; readonly haltStrategy?: HaltStrategy.HaltStrategyInput | undefined; }): Stream<A3 | A4, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3075)

Since v2.0.0