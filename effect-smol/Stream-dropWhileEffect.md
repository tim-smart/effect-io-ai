Package: `effect`<br />
Module: `Stream`<br />

## Stream.dropWhileEffect

Drops elements while the specified effectful predicate evaluates to `true`.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const result = yield* Stream.make(1, 2, 3, 4, 5).pipe(
    Stream.dropWhileEffect((n) => Effect.succeed(n < 3)),
    Stream.runCollect
  )
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [ 3, 4, 5 ]
```

**Signature**

```ts
declare const dropWhileEffect: { <A, E2, R2>(predicate: (a: NoInfer<A>, index: number) => Effect.Effect<boolean, E2, R2>): <E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>; <A, E, R, E2, R2>(self: Stream<A, E, R>, predicate: (a: A, index: number) => Effect.Effect<boolean, E2, R2>): Stream<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L6307)

Since v2.0.0