Package: `effect`<br />
Module: `Stream`<br />

## Stream.drainFork

Runs the provided stream in the background while this stream runs, interrupting it
when this stream completes and failing if the background stream fails or defects.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const foreground = Stream.make(1, 2)
const background = Stream.fromEffect(Console.log("background task"))

const program = Effect.gen(function*() {
  const values = yield* foreground.pipe(
    Stream.drainFork(background),
    Stream.runCollect
  )
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: background task
// Output: [ 1, 2 ]
```

**Signature**

```ts
declare const drainFork: { <A2, E2, R2>(that: Stream<A2, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>): Stream<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L2463)

Since v2.0.0