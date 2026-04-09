Package: `effect`<br />
Module: `Stream`<br />

## Stream.prepend

Prepends the values from the provided iterable before the stream's elements.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const values = yield* Stream.make(3, 4).pipe(
    Stream.prepend([1, 2]),
    Stream.runCollect
  )

  yield* Console.log(values)
  // Output: [ 1, 2, 3, 4 ]
})

Effect.runPromise(program)
```

**Signature**

```ts
declare const prepend: { <B>(values: Iterable<B>): <A, E, R>(self: Stream<A, E, R>) => Stream<B | A, E, R>; <A, E, R, B>(self: Stream<A, E, R>, values: Iterable<B>): Stream<A | B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L2973)

Since v2.0.0