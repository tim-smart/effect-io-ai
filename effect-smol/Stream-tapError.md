Package: `effect`<br />
Module: `Stream`<br />

## Stream.tapError

Effectfully peeks at errors without changing the stream unless the tap fails.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make(1, 2).pipe(
  Stream.concat(Stream.fail("boom")),
  Stream.tapError((error) => Console.log(`tapError: ${error}`)),
  Stream.catch(() => Stream.make(999))
)

const program = Effect.gen(function*() {
  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output:
// tapError: boom
// [ 1, 2, 999 ]
```

**Signature**

```ts
declare const tapError: { <E, A2, E2, R2>(f: (error: E) => Effect.Effect<A2, E2, R2>): <A, R>(self: Stream<A, E, R>) => Stream<A, E | E2, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, f: (error: E) => Effect.Effect<A2, E2, R2>): Stream<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L4804)

Since v4.0.0