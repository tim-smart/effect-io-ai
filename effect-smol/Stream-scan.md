Package: `effect`<br />
Module: `Stream`<br />

## Stream.scan

Accumulates state across the stream, emitting the initial state and each updated state.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const values = yield* Stream.make(1, 2, 3).pipe(
    Stream.scan(0, (acc, n) => acc + n),
    Stream.runCollect
  )
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 0, 1, 3, 6 ]
```

**Signature**

```ts
declare const scan: { <S, A>(initial: S, f: (s: S, a: A) => S): <E, R>(self: Stream<A, E, R>) => Stream<S, E, R>; <A, E, R, S>(self: Stream<A, E, R>, initial: S, f: (s: S, a: A) => S): Stream<S, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L7106)

Since v2.0.0