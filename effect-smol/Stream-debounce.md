Package: `effect`<br />
Module: `Stream`<br />

## Stream.debounce

Drops earlier elements within the debounce window and emits only the latest element after the pause.

**Example**

```ts
import { Console, Duration, Effect, Stream } from "effect"

const stream = Stream.make(1, 2, 3).pipe(
  Stream.concat(Stream.fromEffect(Effect.sleep(Duration.millis(50)).pipe(Effect.as(4)))),
  Stream.concat(Stream.make(5)),
  Stream.debounce(Duration.millis(30))
)

const program = Effect.gen(function*() {
  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
  // Output: [ 3, 5 ]
})
```

**Signature**

```ts
declare const debounce: { (duration: Duration.Input): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R>(self: Stream<A, E, R>, duration: Duration.Input): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L7202)

Since v2.0.0