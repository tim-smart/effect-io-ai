Package: `effect`<br />
Module: `Effect`<br />

## Effect.forkDetach

Forks the effect into a new fiber attached to the global scope. Because the
new fiber is attached to the global scope, when the fiber executing the
returned effect terminates, the forked fiber will continue running.

**Example**

```ts
import { Effect } from "effect"

const daemonTask = Effect.gen(function*() {
  while (true) {
    yield* Effect.sleep("1 second")
    yield* Effect.log("Daemon running...")
  }
})

const program = Effect.gen(function*() {
  const fiber = yield* daemonTask.pipe(Effect.forkDetach)

  // or fork a fiber that starts immediately:
  yield* daemonTask.pipe(Effect.forkDetach({ startImmediately: true }))

  yield* Effect.log("Daemon started")
  yield* Effect.sleep("3 seconds")
  // Daemon continues running after this effect completes
  return "main completed"
})
```

**Signature**

```ts
declare const forkDetach: <Arg extends Effect<any, any, any> | { readonly startImmediately?: boolean | undefined; readonly uninterruptible?: boolean | "inherit" | undefined; } | undefined = { readonly startImmediately?: boolean | undefined; readonly uninterruptible?: boolean | "inherit" | undefined; }>(effectOrOptions?: Arg, options?: { readonly startImmediately?: boolean | undefined; readonly uninterruptible?: boolean | "inherit" | undefined; } | undefined) => [Arg] extends [Effect<infer _A, infer _E, infer _R>] ? Effect<Fiber<_A, _E>, never, _R> : <A, E, R>(self: Effect<A, E, R>) => Effect<Fiber<A, E>, never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8173)

Since v2.0.0