Package: `effect`<br />
Module: `Stream`<br />

## Stream.changesWithEffect

Emits only elements that differ from the previous element, using an effectful equality check.

The predicate runs for each element after the first; returning `true` treats it as equal and skips it.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const stream = Stream.make(1, 1, 2, 2, 3, 3).pipe(
    Stream.changesWithEffect((a, b) => Effect.succeed(a === b))
  )
  const result = yield* Stream.runCollect(stream)
  yield* Console.log(result)
})

Effect.runPromise(program)
// { _id: "Chunk", values: [ 1, 2, 3 ] }
```

**Signature**

```ts
declare const changesWithEffect: { <A, E2, R2>(f: (x: A, y: A) => Effect.Effect<boolean, E2, R2>): <E, R>(self: Stream<A, E, R>) => Stream<A, E | E2, R | R2>; <A, E, R, E2, R2>(self: Stream<A, E, R>, f: (x: A, y: A) => Effect.Effect<boolean, E2, R2>): Stream<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L8500)

Since v2.0.0