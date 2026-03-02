Package: `effect`<br />
Module: `Stream`<br />

## Stream.dropUntil

Drops elements until the specified predicate evaluates to `true`, then drops
that matching element.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make(1, 2, 3, 4, 5)
const result = Stream.dropUntil(stream, (n) => n >= 3)

Effect.gen(function*() {
  const output = yield* Stream.runCollect(result)
  yield* Console.log(output) // Output: [ 4, 5 ]
})
```

**Signature**

```ts
declare const dropUntil: { <A>(predicate: (a: NoInfer<A>, index: number) => boolean): <E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R>(self: Stream<A, E, R>, predicate: (a: NoInfer<A>, index: number) => boolean): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L6165)

Since v2.0.0