Package: `effect`<br />
Module: `Stream`<br />

## Stream.bind

Binds the result of a stream to a field in the do-notation record.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Stream.Do.pipe(
  Stream.bind("a", () => Stream.make(1, 2)),
  Stream.bind("b", ({ a }) => Stream.succeed(a + 1))
)

const result = Stream.runCollect(program)

Effect.runPromise(Effect.flatMap(result, Console.log))
// [{ a: 1, b: 2 }, { a: 2, b: 3 }]
```

**Signature**

```ts
declare const bind: { <N extends string, A, B, E2, R2>(tag: Exclude<N, keyof A>, f: (_: NoInfer<A>) => Stream<B, E2, R2>, options?: { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined; } | undefined): <E, R>(self: Stream<A, E, R>) => Stream<{ [K in N | keyof A]: K extends keyof A ? A[K] : B; }, E2 | E, R2 | R>; <A, E, R, N extends string, B, E2, R2>(self: Stream<A, E, R>, tag: Exclude<N, keyof A>, f: (_: NoInfer<A>) => Stream<B, E2, R2>, options?: { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined; } | undefined): Stream<{ [K in N | keyof A]: K extends keyof A ? A[K] : B; }, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L9588)

Since v4.0.0