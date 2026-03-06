Package: `effect`<br />
Module: `Stream`<br />

## Stream.changesWith

Returns a stream that only emits elements that are not equal to the previously emitted element, as determined by the specified predicate.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make("A", "a", "B", "b", "b").pipe(
  Stream.changesWith((left, right) => left.toLowerCase() === right.toLowerCase())
)

Effect.runPromise(
  Effect.gen(function*() {
    const values = yield* Stream.runCollect(stream)
    yield* Console.log(values)
  })
)
// ["A", "B"]
```

**Signature**

```ts
declare const changesWith: { <A>(f: (x: A, y: A) => boolean): <E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R>(self: Stream<A, E, R>, f: (x: A, y: A) => boolean): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L8436)

Since v2.0.0