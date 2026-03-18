Package: `effect`<br />
Module: `Stream`<br />

## Stream.onFirst

Runs the provided effect with the first element emitted by the stream.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

Effect.runPromise(Effect.gen(function* () {
  yield* Stream.fromArray([1, 2, 3]).pipe(
    Stream.onFirst((value) => Console.log(`first=${value}`)),
    Stream.runDrain
  )
}))
// Output: first=1
```

**Signature**

```ts
declare const onFirst: { <A, X, EX, RX>(onFirst: (element: NoInfer<A>) => Effect.Effect<X, EX, RX>): <E, R>(self: Stream<A, E, R>) => Stream<A, E | EX, R | RX>; <A, E, R, X, EX, RX>(self: Stream<A, E, R>, onFirst: (element: NoInfer<A>) => Effect.Effect<X, EX, RX>): Stream<A, E | EX, R | RX>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L9063)

Since v4.0.0