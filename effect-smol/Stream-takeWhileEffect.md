Package: `effect`<br />
Module: `Stream`<br />

## Stream.takeWhileEffect

Takes elements from the stream while the effectful predicate is `true`.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const result = yield* Stream.range(1, 5).pipe(
    Stream.takeWhileEffect((n) => Effect.succeed(n % 3 !== 0)),
    Stream.runCollect
  )
  Console.log(result)
})

Effect.runPromise(program)
// Output: [ 1, 2 ]
```

**Signature**

```ts
declare const takeWhileEffect: { <A, E2, R2>(predicate: (a: NoInfer<A>, n: number) => Effect.Effect<boolean, E2, R2>): <E, R>(self: Stream<A, E, R>) => Stream<A, E | E2, R | R2>; <A, E, R, E2, R2>(self: Stream<A, E, R>, predicate: (a: NoInfer<A>, n: number) => Effect.Effect<boolean, E2, R2>): Stream<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L6075)

Since v2.0.0