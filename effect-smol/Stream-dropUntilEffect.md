Package: `effect`<br />
Module: `Stream`<br />

## Stream.dropUntilEffect

Drops all elements of the stream until the specified effectful predicate
evaluates to `true`.

**When to use**

Use when dropping the leading prefix requires an Effect or service and the
first matching element should also be dropped.

**Example** (Dropping until an effectful predicate matches)

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const result = yield* Stream.range(1, 5).pipe(
    Stream.dropUntilEffect((n) => Effect.succeed(n % 3 === 0)),
    Stream.runCollect
  )
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [ 4, 5 ]
```

**Signature**

```ts
declare const dropUntilEffect: { <A, E2, R2>(predicate: (a: NoInfer<A>, index: number) => Effect.Effect<boolean, E2, R2>): <E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>; <A, E, R, E2, R2>(self: Stream<A, E, R>, predicate: (a: NoInfer<A>, index: number) => Effect.Effect<boolean, E2, R2>): Stream<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L6768)

Since v2.0.0