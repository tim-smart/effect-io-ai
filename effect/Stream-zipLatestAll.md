Package: `effect`<br />
Module: `Stream`<br />

## Stream.zipLatestAll

Zips multiple streams so that when a value is emitted by any stream, it is
combined with the latest values from the other streams to produce a result.

**When to use**

Use when each stream should contribute its latest value after all streams have
emitted at least once.

**Gotchas**

Note: tracking the latest value is done on a per-array basis. That means
that emitted elements that are not the last value in arrays will never be
used for zipping.

**Example** (Zipping latest values from many streams)

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.zipLatestAll(
  Stream.make(1, 2, 3).pipe(Stream.rechunk(1)),
  Stream.make("a", "b", "c").pipe(Stream.rechunk(1)),
  Stream.make(true, false, true).pipe(Stream.rechunk(1))
)

const program = Effect.gen(function*() {
  const result = yield* Stream.runCollect(stream)
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [ [ 1, "a", true ], [ 2, "a", true ], [ 3, "a", true ], [ 3, "b", true ], [ 3, "c", true ], [ 3, "c", false ], [ 3, "c", true ] ]
```

**Signature**

```ts
declare const zipLatestAll: <T extends ReadonlyArray<Stream<any, any, any>>>(...streams: T) => Stream<[T[number]] extends [never] ? never : { [K in keyof T]: T[K] extends Stream<infer A, infer _E, infer _R> ? A : never; }, [T[number]] extends [never] ? never : T[number] extends Stream<infer _A, infer _E, infer _R> ? _E : never, [T[number]] extends [never] ? never : T[number] extends Stream<infer _A, infer _E, infer _R> ? _R : never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4034)

Since v3.3.0