Package: `effect`<br />
Module: `Effect`<br />

## Effect.replicate

Replicates the given effect `n` times.

**Details**

This function takes an effect and replicates it a specified number of times
(`n`). The result is an array of `n` effects, each of which is identical to
the original effect.

**Example**

```ts
import { Console, Effect } from "effect"

const task = Effect.succeed("Hello, World!").pipe(
  Effect.tap(Console.log)
)

const program = Effect.gen(function*() {
  // Replicate the task 3 times
  const tasks = Effect.replicate(task, 3)
  for (const t of tasks) {
    // Run each task
    yield* t
  }
})

Effect.runFork(program)
// Output:
// Hello, World!
// Hello, World!
// Hello, World!
```

**Signature**

```ts
declare const replicate: { (n: number): <A, E, R>(self: Effect<A, E, R>) => Array<Effect<A, E, R>>; <A, E, R>(self: Effect<A, E, R>, n: number): Array<Effect<A, E, R>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L2101)

Since v2.0.0