Package: `effect`<br />
Module: `Stream`<br />

## Stream.runForEachWhile

Runs the stream, applying the effectful predicate to each element and
stopping when it returns `false`.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const stream = Stream.make(1, 2, 3, 4, 5)

  yield* Stream.runForEachWhile(stream, (n) =>
    Effect.gen(function*() {
      yield* Console.log(`Processing: ${n}`)
      return n < 3
    })
  )
})

Effect.runPromise(program)
// Processing: 1
// Processing: 2
// Processing: 3
```

**Signature**

```ts
declare const runForEachWhile: { <A, E2, R2>(f: (a: A) => Effect.Effect<boolean, E2, R2>): <E, R>(self: Stream<A, E, R>) => Effect.Effect<void, E2 | E, R2 | R>; <A, E, R, E2, R2>(self: Stream<A, E, R>, f: (a: A) => Effect.Effect<boolean, E2, R2>): Effect.Effect<void, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L10000)

Since v2.0.0