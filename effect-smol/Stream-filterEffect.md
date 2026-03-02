Package: `effect`<br />
Module: `Stream`<br />

## Stream.filterEffect

Effectfully filters elements in a single pass.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make(1, 2, 3, 4).pipe(Stream.filterEffect((n) => Effect.succeed(n > 2)))

const program = Effect.gen(function*() {
  const result = yield* Stream.runCollect(stream)
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [ 3, 4 ]
```

**Signature**

```ts
declare const filterEffect: { <A, EX, RX>(predicate: (a: NoInfer<A>, i: number) => Effect.Effect<boolean, EX, RX>): <E, R>(self: Stream<A, E, R>) => Stream<A, E | EX, R | RX>; <A, E, R, EX, RX>(self: Stream<A, E, R>, predicate: (a: NoInfer<A>, i: number) => Effect.Effect<boolean, EX, RX>): Stream<A, E | EX, R | RX>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L3978)

Since v2.0.0