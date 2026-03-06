Package: `effect`<br />
Module: `Stream`<br />

## Stream.bindEffect

Binds an Effect-produced value into the do-notation record for each stream element.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.Do.pipe(
  Stream.bind("value", () => Stream.make(1, 2)),
  Stream.bindEffect("double", ({ value }) => Effect.succeed(value * 2))
)

const program = Effect.gen(function*() {
  const result = yield* Stream.runCollect(stream)
  yield* Console.log(result)
})

Effect.runPromise(program)
// [{ value: 1, double: 2 }, { value: 2, double: 4 }]
```

**Signature**

```ts
declare const bindEffect: { <N extends string, A, B, E2, R2>(tag: Exclude<N, keyof A>, f: (_: NoInfer<A>) => Effect.Effect<B, E2, R2>, options?: { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined; readonly unordered?: boolean | undefined; }): <E, R>(self: Stream<A, E, R>) => Stream<{ [K in keyof A | N]: K extends keyof A ? A[K] : B; }, E | E2, R | R2>; <A, E, R, N extends string, B, E2, R2>(self: Stream<A, E, R>, tag: Exclude<N, keyof A>, f: (_: NoInfer<A>) => Effect.Effect<B, E2, R2>, options?: { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined; readonly unordered?: boolean | undefined; }): Stream<{ [K in keyof A | N]: K extends keyof A ? A[K] : B; }, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L9631)

Since v4.0.0