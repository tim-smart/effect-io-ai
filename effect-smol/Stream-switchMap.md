Package: `effect`<br />
Module: `Stream`<br />

## Stream.switchMap

Switches to the latest stream produced by the mapping function, interrupting
the previous stream when a new element arrives.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Stream.make(1, 2, 3).pipe(
  Stream.switchMap((n) => (n === 3 ? Stream.make(n) : Stream.never)),
  Stream.runCollect
)

Effect.gen(function*() {
  const result = yield* program
  yield* Console.log(result)
  // Output: [ 3 ]
})
```

**Signature**

```ts
declare const switchMap: { <A, A2, E2, R2>(f: (a: A) => Stream<A2, E2, R2>, options?: { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined; } | undefined): <E, R>(self: Stream<A, E, R>) => Stream<A2, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, f: (a: A) => Stream<A2, E2, R2>, options?: { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined; } | undefined): Stream<A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L2399)

Since v4.0.0