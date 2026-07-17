Package: `effect`<br />
Module: `Stream`<br />

## Stream.zipLatestWith

Combines the latest values from both streams whenever either emits, using
the provided function.

**When to use**

Use when two streams should start emitting custom combined values after both
have produced at least one value.

**Gotchas**

Note: tracking the latest value is done on a per-array basis. That means
that emitted elements that are not the last value in arrays will never be
used for zipping.

**Example** (Zipping latest values with a function)

```ts
import { Console, Effect, Stream } from "effect"

Effect.gen(function*() {
  const result = yield* Stream.make(1, 2, 3).pipe(
    Stream.rechunk(1),
    Stream.zipLatestWith(
      Stream.make(10, 20).pipe(Stream.rechunk(1)),
      (n, m) => n + m
    ),
    Stream.runCollect
  )

  yield* Console.log(result)
  // Output: [ 11, 12, 22, 23 ]
})
```

**Signature**

```ts
declare const zipLatestWith: { <AR, ER, RR, AL, A>(right: Stream<AR, ER, RR>, f: (left: AL, right: AR) => A): <EL, RL>(left: Stream<AL, EL, RL>) => Stream<A, EL | ER, RL | RR>; <AL, EL, RL, AR, ER, RR, A>(left: Stream<AL, EL, RL>, right: Stream<AR, ER, RR>, f: (left: AL, right: AR) => A): Stream<A, EL | ER, RL | RR>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4160)

Since v2.0.0