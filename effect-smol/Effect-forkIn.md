Package: `effect`<br />
Module: `Effect`<br />

## Effect.forkIn

Forks the effect in the specified scope. The fiber will be interrupted
when the scope is closed.

**Example**

```ts
import { Effect } from "effect"

const task = Effect.gen(function*() {
  yield* Effect.sleep("10 seconds")
  return "completed"
})

const program = Effect.scoped(
  Effect.gen(function*() {
    const scope = yield* Effect.scope
    const fiber = yield* Effect.forkIn(task, scope)
    yield* Effect.sleep("1 second")
    // Fiber will be interrupted when scope closes
    return "done"
  })
)
```

**Signature**

```ts
declare const forkIn: { (scope: Scope, options?: { readonly startImmediately?: boolean | undefined; readonly uninterruptible?: boolean | "inherit" | undefined; }): <A, E, R>(self: Effect<A, E, R>) => Effect<Fiber<A, E>, never, R>; <A, E, R>(self: Effect<A, E, R>, scope: Scope, options?: { readonly startImmediately?: boolean | undefined; readonly uninterruptible?: boolean | "inherit" | undefined; }): Effect<Fiber<A, E>, never, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8034)

Since v2.0.0