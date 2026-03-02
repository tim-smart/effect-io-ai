Package: `effect`<br />
Module: `Stream`<br />

## Stream.takeUntilEffect

Effectful predicate version of `takeUntil`.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const result = yield* Stream.range(1, 5).pipe(
    Stream.takeUntilEffect((n) => Effect.succeed(n % 3 === 0)),
    Stream.runCollect
  )
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3 ]
```

**Signature**

```ts
declare const takeUntilEffect: { <A, E2, R2>(predicate: (a: NoInfer<A>, n: number) => Effect.Effect<boolean, E2, R2>, options?: { readonly excludeLast?: boolean | undefined; }): <E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>; <A, E, R, E2, R2>(self: Stream<A, E, R>, predicate: (a: A, n: number) => Effect.Effect<boolean, E2, R2>, options?: { readonly excludeLast?: boolean | undefined; }): Stream<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L5921)

Since v2.0.0