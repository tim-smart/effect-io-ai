# combine

Combines the elements from this stream and the specified stream by
repeatedly applying the function `f` to extract an element using both sides
and conceptually "offer" it to the destination stream. `f` can maintain
some internal state to control the combining process, with the initial
state being specified by `s`.

Where possible, prefer `Stream.combineChunks` for a more efficient
implementation.

To import and use `combine` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.combine
```

**Signature**

```ts
export declare const combine: {
  <R2, E2, A2, S, R3, E, A, R4, R5, A3>(
    that: Stream<A2, E2, R2>,
    s: S,
    f: (
      s: S,
      pullLeft: Effect.Effect<A, Option.Option<E>, R3>,
      pullRight: Effect.Effect<A2, Option.Option<E2>, R4>
    ) => Effect.Effect<Exit.Exit<readonly [A3, S], Option.Option<E2 | E>>, never, R5>
  ): <R>(self: Stream<A, E, R>) => Stream<A3, E2 | E, R2 | R3 | R4 | R5 | R>
  <R, R2, E2, A2, S, R3, E, A, R4, R5, A3>(
    self: Stream<A, E, R>,
    that: Stream<A2, E2, R2>,
    s: S,
    f: (
      s: S,
      pullLeft: Effect.Effect<A, Option.Option<E>, R3>,
      pullRight: Effect.Effect<A2, Option.Option<E2>, R4>
    ) => Effect.Effect<Exit.Exit<readonly [A3, S], Option.Option<E2 | E>>, never, R5>
  ): Stream<A3, E2 | E, R | R2 | R3 | R4 | R5>
}
```
