Package: `effect`<br />
Module: `Stream`<br />

## Stream.timeout

Ends the stream if it does not produce a value within the specified duration.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const values = yield* Stream.make(1).pipe(
    Stream.concat(Stream.never),
    Stream.timeout("1 second"),
    Stream.runCollect
  )
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1 ]
```

**Signature**

```ts
declare const timeout: { (duration: Duration.Input): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R>(self: Stream<A, E, R>, duration: Duration.Input): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L2594)

Since v2.0.0