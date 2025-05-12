Package: `effect`<br />
Module: `Effect`<br />

## Effect.zipLeft

Executes two effects sequentially, returning the result of the first effect
and ignoring the result of the second.

**Details**

This function allows you to run two effects in sequence, where the result of
the first effect is preserved, and the result of the second effect is
discarded. By default, the two effects are executed sequentially. If you need
them to run concurrently, you can pass the `{ concurrent: true }` option.

The second effect will always be executed, even though its result is ignored.
This makes it useful for cases where you want to execute an effect for its
side effects while keeping the result of another effect.

**When to Use**

Use this function when you are only interested in the result of the first
effect but still need to run the second effect for its side effects, such as
logging or performing a cleanup action.

**Example**

```ts
import { Effect } from "effect"

const task1 = Effect.succeed(1).pipe(
  Effect.delay("200 millis"),
  Effect.tap(Effect.log("task1 done"))
)
const task2 = Effect.succeed("hello").pipe(
  Effect.delay("100 millis"),
  Effect.tap(Effect.log("task2 done"))
)

const program = Effect.zipLeft(task1, task2)

Effect.runPromise(program).then(console.log)
// Output:
// timestamp=... level=INFO fiber=#0 message="task1 done"
// timestamp=... level=INFO fiber=#0 message="task2 done"
// 1
```

**See**

- `zipRight` for a version that returns the result of the second
effect.

**Signature**

```ts
declare const zipLeft: { <A2, E2, R2>(that: Effect<A2, E2, R2>, options?: { readonly concurrent?: boolean | undefined; readonly batching?: boolean | "inherit" | undefined; readonly concurrentFinalizers?: boolean | undefined; } | undefined): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Effect<A, E, R>, that: Effect<A2, E2, R2>, options?: { readonly concurrent?: boolean | undefined; readonly batching?: boolean | "inherit" | undefined; readonly concurrentFinalizers?: boolean | undefined; } | undefined): Effect<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L12552)

Since v2.0.0