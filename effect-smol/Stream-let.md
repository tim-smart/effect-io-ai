Package: `effect`<br />
Module: `Stream`<br />

## Stream.let

Adds a computed field to the current Do-notation record.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.Do.pipe(
  Stream.let("x", () => 2),
  Stream.let("y", ({ x }) => x * 3)
)

const program = Effect.gen(function*() {
  const records = yield* Stream.runCollect(stream)
  yield* Console.log(records)
})

Effect.runPromise(program)
// [{ x: 2, y: 6 }]
```

**Signature**

```ts
declare const let: { <N extends string, A extends object, B>(name: Exclude<N, keyof A>, f: (a: NoInfer<A>) => B): <E, R>(self: Stream<A, E, R>) => Stream<{ [K in N | keyof A]: K extends keyof A ? A[K] : B; }, E, R>; <A extends object, E, R, N extends string, B>(self: Stream<A, E, R>, name: Exclude<N, keyof A>, f: (a: NoInfer<A>) => B): Stream<{ [K in N | keyof A]: K extends keyof A ? A[K] : B; }, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L9554)

Since v4.0.0