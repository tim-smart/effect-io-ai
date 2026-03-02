Package: `effect`<br />
Module: `Stream`<br />

## Stream.toChannel

Creates a channel from a stream.

**Example**

```ts
import { Channel, Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const stream = Stream.make(1, 2, 3)
  const channel = Stream.toChannel(stream)
  const values = yield* Channel.runCollect(channel)
  yield* Console.log(values.flat())
})

Effect.runPromise(program)
// Output: [ 1, 2, 3 ]
```

**Signature**

```ts
declare const toChannel: <A, E, R>(stream: Stream<A, E, R>) => Channel.Channel<Arr.NonEmptyReadonlyArray<A>, E, void, unknown, unknown, unknown, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L632)

Since v2.0.0