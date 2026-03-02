Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromIterable

Creates a new `Stream` from an iterable collection of values.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const numbers = [1, 2, 3]

const program = Effect.gen(function*() {
  const stream = Stream.fromIterable(numbers)
  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3 ]
```

**Signature**

```ts
declare const fromIterable: <A>(iterable: Iterable<A>) => Stream<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L985)

Since v2.0.0