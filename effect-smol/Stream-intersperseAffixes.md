Package: `effect`<br />
Module: `Stream`<br />

## Stream.intersperseAffixes

Intersperse stream elements with a middle value, adding a start and end value.

The start and end values are always emitted, even when the stream is empty.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make("a", "b", "c").pipe(
  Stream.intersperseAffixes({ start: "[", middle: ",", end: "]" })
)

const program = Effect.gen(function*() {
  const result = yield* Stream.runCollect(stream)
  yield* Console.log(result)
})

Effect.runPromise(program)
// [ "[", "a", ",", "b", ",", "c", "]" ]
```

**Signature**

```ts
declare const intersperseAffixes: { <A2, A3, A4>(options: { readonly start: A2; readonly middle: A3; readonly end: A4; }): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A3 | A4 | A, E, R>; <A, E, R, A2, A3, A4>(self: Stream<A, E, R>, options: { readonly start: A2; readonly middle: A3; readonly end: A4; }): Stream<A | A2 | A3 | A4, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L8701)

Since v2.0.0