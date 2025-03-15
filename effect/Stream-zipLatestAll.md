Package: `effect`<br />
Module: `Stream`<br />

## Stream.zipLatestAll

Zips multiple streams so that when a value is emitted by any of the streams,
it is combined with the latest values from the other streams to produce a result.

Note: tracking the latest value is done on a per-chunk basis. That means
that emitted elements that are not the last value in chunks will never be
used for zipping.

**Example**

```ts
import { Stream, Schedule, Console, Effect } from "effect"

const stream = Stream.zipLatestAll(
    Stream.fromSchedule(Schedule.spaced('1 millis')),
    Stream.fromSchedule(Schedule.spaced('2 millis')),
    Stream.fromSchedule(Schedule.spaced('4 millis')),
).pipe(Stream.take(6), Stream.tap(Console.log))

Effect.runPromise(Stream.runDrain(stream))
// Output:
// [ 0, 0, 0 ]
// [ 1, 0, 0 ]
// [ 1, 1, 0 ]
// [ 2, 1, 0 ]
// [ 3, 1, 0 ]
// [ 3, 1, 1 ]
// .....
```

**Signature**

```ts
declare const zipLatestAll: <T extends ReadonlyArray<Stream<any, any, any>>>(...streams: T) => Stream<[T[number]] extends [never] ? never : { [K in keyof T]: T[K] extends Stream<infer A, infer _E, infer _R> ? A : never; }, [T[number]] extends [never] ? never : T[number] extends Stream<infer _A, infer _E, infer _R> ? _E : never, [T[number]] extends [never] ? never : T[number] extends Stream<infer _A, infer _E, infer _R> ? _R : never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5911)

Since v3.3.0