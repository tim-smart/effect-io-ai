Package: `effect`<br />
Module: `Stream`<br />

## Stream.collect

Collects all elements into an array and emits it as a single element.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make(1, 2, 3)

const program = Effect.gen(function*() {
  const collected = yield* stream.pipe(Stream.collect, Stream.runCollect)
  yield* Console.log(collected[0])
})

Effect.runPromise(program)
// [1, 2, 3]
```

**Signature**

```ts
declare const collect: <A, E, R>(self: Stream<A, E, R>) => Stream<Array<A>, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L8343)

Since v2.0.0