Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromArray

Creates a stream from an array of values.

**Example** (Creating a stream from an array of values)

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const stream = Stream.fromArray([1, 2, 3])
  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3 ]
```

**Signature**

```ts
declare const fromArray: <A>(array: ReadonlyArray<A>) => Stream<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1265)

Since v4.0.0