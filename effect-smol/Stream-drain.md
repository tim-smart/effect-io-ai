Package: `effect`<br />
Module: `Stream`<br />

## Stream.drain

Converts this stream to one that runs its effects but emits no elements.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const result = yield* Stream.range(1, 6).pipe(Stream.drain, Stream.runCollect)
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: []
```

**Signature**

```ts
declare const drain: <A, E, R>(self: Stream<A, E, R>) => Stream<never, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L2447)

Since v2.0.0