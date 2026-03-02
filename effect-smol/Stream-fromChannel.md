Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromChannel

Creates a stream from a array-emitting `Channel`.

**Example**

```ts
import { Channel, Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const channel = Channel.succeed([1, 2, 3] as const)
  const stream = Stream.fromChannel(channel)
  const result = yield* Stream.runCollect(stream)
  yield* Console.log(result)
})

// Output: [ 1, 2, 3 ]
```

**Signature**

```ts
declare const fromChannel: <Arr extends Arr.NonEmptyReadonlyArray<any>, E, R>(channel: Channel.Channel<Arr, E, void, unknown, unknown, unknown, R>) => Stream<Arr extends Arr.NonEmptyReadonlyArray<infer A> ? A : never, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L319)

Since v2.0.0