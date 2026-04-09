Package: `effect`<br />
Module: `Stream`<br />

## Stream.flattenArray

Flattens a stream of non-empty arrays into a stream of elements.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Stream.flattenChunks`

**Example**

```ts
import { Array, Console, Effect, Stream } from "effect"

const stream = Stream.make(Array.make(1, 2), Array.make(3))

const program = Effect.gen(function* () {
  const result = yield* Stream.runCollect(Stream.flattenArray(stream))
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3 ]
```

**Signature**

```ts
declare const flattenArray: <A, E, R>(self: Stream<Arr.NonEmptyReadonlyArray<A>, E, R>) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L2508)

Since v4.0.0