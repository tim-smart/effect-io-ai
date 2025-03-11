## bind

The "do simulation" in Effect allows you to write code in a more declarative style, similar to the "do notation" in other programming languages. It provides a way to define variables and perform operations on them using functions like `bind` and `let`.

Here's how the do simulation works:

1. Start the do simulation using the `Do` value
2. Within the do simulation scope, you can use the `bind` function to define variables and bind them to `Stream` values
3. You can accumulate multiple `bind` statements to define multiple variables within the scope
4. Inside the do simulation scope, you can also use the `let` function to define variables and bind them to simple values

**Example**

```ts
import * as assert from "node:assert"
import { Chunk, Effect, pipe, Stream } from "effect"

const result = pipe(
  Stream.Do,
  Stream.bind("x", () => Stream.succeed(2)),
  Stream.bind("y", () => Stream.succeed(3)),
  Stream.let("sum", ({ x, y }) => x + y)
)
assert.deepStrictEqual(Effect.runSync(Stream.runCollect(result)), Chunk.of({ x: 2, y: 3, sum: 5 }))
```

**See**

- `Do`
- `bindTo`
- `bindEffect`
- `let`

**Signature**

```ts
declare const bind: { <N extends string, A, B, E2, R2>(tag: Exclude<N, keyof A>, f: (_: NoInfer<A>) => Stream<B, E2, R2>, options?: { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined; } | undefined): <E, R>(self: Stream<A, E, R>) => Stream<{ [K in N | keyof A]: K extends keyof A ? A[K] : B; }, E2 | E, R2 | R>; <A, E, R, N extends string, B, E2, R2>(self: Stream<A, E, R>, tag: Exclude<N, keyof A>, f: (_: NoInfer<A>) => Stream<B, E2, R2>, options?: { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined; } | undefined): Stream<{ [K in N | keyof A]: K extends keyof A ? A[K] : B; }, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L6217)

Since v2.0.0