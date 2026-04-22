Package: `effect`<br />
Module: `Effect`<br />

## Effect.forkScoped

Forks the fiber in a `Scope`, interrupting it when the scope is closed.

**Example**

```ts
import { Effect } from "effect"

const backgroundTask = Effect.gen(function*() {
  yield* Effect.sleep("5 seconds")
  yield* Effect.log("Background task completed")
  return "result"
})

const program = Effect.scoped(
  Effect.gen(function*() {
    const fiber = yield* backgroundTask.pipe(Effect.forkScoped)

    // or fork a fiber that starts immediately:
    yield* backgroundTask.pipe(Effect.forkScoped({ startImmediately: true }))

    yield* Effect.log("Task forked in scope")
    yield* Effect.sleep("1 second")

    // Fiber will be interrupted when scope closes
    return "scope completed"
  })
)
```

**Signature**

```ts
declare const forkScoped: <Arg extends Effect<any, any, any> | { readonly startImmediately?: boolean | undefined; readonly uninterruptible?: boolean | "inherit" | undefined; } | undefined = { readonly startImmediately?: boolean | undefined; readonly uninterruptible?: boolean | "inherit" | undefined; }>(effectOrOptions?: Arg, options?: { readonly startImmediately?: boolean | undefined; readonly uninterruptible?: boolean | "inherit" | undefined; } | undefined) => [Arg] extends [Effect<infer _A, infer _E, infer _R>] ? Effect<Fiber<_A, _E>, never, _R | Scope> : <A, E, R>(self: Effect<A, E, R>) => Effect<Fiber<A, E>, never, R | Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8119)

Since v2.0.0