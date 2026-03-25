Package: `effect`<br />
Module: `Stream`<br />

## Stream.intersperse

Inserts the provided element between emitted elements.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const stream = Stream.make(1, 2, 3, 4).pipe(Stream.intersperse(0))
  const result = yield* Stream.runCollect(stream)
  yield* Console.log(result)
})

Effect.runPromise(program)
// [1, 0, 2, 0, 3, 0, 4]
```

**Signature**

```ts
declare const intersperse: { <A2>(element: A2): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A, E, R>; <A, E, R, A2>(self: Stream<A, E, R>, element: A2): Stream<A | A2, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L8741)

Since v2.0.0