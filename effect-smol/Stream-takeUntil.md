Package: `effect`<br />
Module: `Stream`<br />

## Stream.takeUntil

Takes elements until the predicate matches.

When `excludeLast` is `true`, the matching element is dropped.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.range(1, 5)

const program = Effect.gen(function*() {
  const inclusive = yield* stream.pipe(
    Stream.takeUntil((n) => n % 3 === 0),
    Stream.runCollect
  )
  yield* Console.log(inclusive)
  // Output: [ 1, 2, 3 ]

  const exclusive = yield* stream.pipe(
    Stream.takeUntil((n) => n % 3 === 0, { excludeLast: true }),
    Stream.runCollect
  )
  yield* Console.log(exclusive)
  // Output: [ 1, 2 ]
})
```

**Signature**

```ts
declare const takeUntil: { <A>(predicate: (a: NoInfer<A>, n: number) => boolean, options?: { readonly excludeLast?: boolean | undefined; }): <E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R>(self: Stream<A, E, R>, predicate: (a: A, n: number) => boolean, options?: { readonly excludeLast?: boolean | undefined; }): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L5867)

Since v2.0.0