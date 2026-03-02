Package: `effect`<br />
Module: `Stream`<br />

## Stream.iterate

Creates an infinite stream by repeatedly applying a function to a seed value.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.iterate(1, (n) => n + 1).pipe(Stream.take(3))

const program = Effect.gen(function* () {
  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3 ]
```

**Signature**

```ts
declare const iterate: <A>(value: A, next: (value: A) => A) => Stream<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1575)

Since v2.0.0