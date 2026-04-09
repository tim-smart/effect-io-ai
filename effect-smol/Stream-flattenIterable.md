Package: `effect`<br />
Module: `Stream`<br />

## Stream.flattenIterable

Submerges the iterables emitted by this stream into the stream's structure.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Stream.flattenIterables`

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const stream = Stream.make([1, 2], [3, 4]).pipe(Stream.flattenIterable)
  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3, 4 ]
```

**Signature**

```ts
declare const flattenIterable: <A, E, R>(self: Stream<Iterable<A>, E, R>) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L2885)

Since v4.0.0