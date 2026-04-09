Package: `effect`<br />
Module: `Stream`<br />

## Stream.interleaveWith

Interleaves two streams deterministically by following a boolean decider stream.

The decider controls how many elements are pulled; if one side ends, pulls for
that side are ignored.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const left = Stream.make(1, 3, 5)
  const right = Stream.make(2, 4, 6)
  const decider = Stream.make(true, false, false, true, true)

  const values = yield* Stream.runCollect(
    Stream.interleaveWith(left, right, decider)
  )

  yield* Console.log(values)
})

Effect.runPromise(program)
// [ 1, 2, 4, 3, 5 ]
```

**Signature**

```ts
declare const interleaveWith: { <A2, E2, R2, E3, R3>(that: Stream<A2, E2, R2>, decider: Stream<boolean, E3, R3>): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A, E2 | E3 | E, R2 | R3 | R>; <A, E, R, A2, E2, R2, E3, R3>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>, decider: Stream<boolean, E3, R3>): Stream<A | A2, E | E2 | E3, R | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L8946)

Since v2.0.0