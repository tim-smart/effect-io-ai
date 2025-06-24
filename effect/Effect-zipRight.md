Package: `effect`<br />
Module: `Effect`<br />

## Effect.zipRight

Executes two effects sequentially, returning the result of the second effect
while ignoring the result of the first.

**Details**

This function allows you to run two effects in sequence, keeping the result
of the second effect and discarding the result of the first. By default, the
two effects are executed sequentially. If you need them to run concurrently,
you can pass the `{ concurrent: true }` option.

The first effect will always be executed, even though its result is ignored.
This makes it useful for scenarios where the first effect is needed for its
side effects, but only the result of the second effect is important.

**When to Use**

Use this function when you are only interested in the result of the second
effect but still need to run the first effect for its side effects, such as
initialization or setup tasks.

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

const program = Effect.zipRight(task1, task2)

Effect.runPromise(program).then(console.log)
// Output:
// timestamp=... level=INFO fiber=#0 message="task1 done"
// timestamp=... level=INFO fiber=#0 message="task2 done"
// hello
```

**See**

- `zipLeft` for a version that returns the result of the first
effect.

**Signature**

```ts
declare const zipRight: { <A2, E2, R2>(that: Effect<A2, E2, R2>, options?: { readonly concurrent?: boolean | undefined; readonly batching?: boolean | "inherit" | undefined; readonly concurrentFinalizers?: boolean | undefined; }): <A, E, R>(self: Effect<A, E, R>) => Effect<A2, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Effect<A, E, R>, that: Effect<A2, E2, R2>, options?: { readonly concurrent?: boolean | undefined; readonly batching?: boolean | "inherit" | undefined; readonly concurrentFinalizers?: boolean | undefined; }): Effect<A2, E2 | E, R2 | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L12674)

Since v2.0.0