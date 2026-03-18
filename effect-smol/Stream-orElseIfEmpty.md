Package: `effect`<br />
Module: `Stream`<br />

## Stream.orElseIfEmpty

Switches to a fallback stream if this stream is empty.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const values = yield* Stream.empty.pipe(
    Stream.orElseIfEmpty(() => Stream.make(1, 2)),
    Stream.runCollect
  )
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2 ]
```

**Signature**

```ts
declare const orElseIfEmpty: { <E, A2, E2, R2>(orElse: LazyArg<Stream<A2, E2, R2>>): <A, R>(self: Stream<A, E, R>) => Stream<A | A2, E | E2, R | R2>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, orElse: LazyArg<Stream<A2, E2, R2>>): Stream<A | A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L5428)

Since v2.0.0