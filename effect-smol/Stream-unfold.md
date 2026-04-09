Package: `effect`<br />
Module: `Stream`<br />

## Stream.unfold

Creates a stream by peeling off successive layers of a state value.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const stream = Stream.unfold(1, (n) => Effect.succeed([n, n + 1] as const))
  const values = yield* Stream.runCollect(stream.pipe(Stream.take(5)))
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3, 4, 5 ]
```

**Signature**

```ts
declare const unfold: <S, A, E, R>(s: S, f: (s: S) => Effect.Effect<readonly [A, S] | undefined, E, R>) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1580)

Since v2.0.0