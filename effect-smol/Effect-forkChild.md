Package: `effect`<br />
Module: `Effect`<br />

## Effect.forkChild

Returns an effect that forks this effect into its own separate fiber,
returning the fiber immediately, without waiting for it to begin executing
the effect.

You can use the `forkChild` method whenever you want to execute an effect in a
new fiber, concurrently and without "blocking" the fiber executing other
effects. Using fibers can be tricky, so instead of using this method
directly, consider other higher-level methods, such as `raceWith`,
`zipPar`, and so forth.

The fiber returned by this method has methods to interrupt the fiber and to
wait for it to finish executing the effect. See `Fiber` for more
information.

Whenever you use this method to launch a new fiber, the new fiber is
attached to the parent fiber's scope. This means when the parent fiber
terminates, the child fiber will be terminated as well, ensuring that no
fibers leak. This behavior is called "auto supervision", and if this
behavior is not desired, you may use the `forkDetach` or `forkIn` methods.

**Example**

```ts
import { Effect, Fiber } from "effect"

const longRunningTask = Effect.gen(function*() {
  yield* Effect.sleep("2 seconds")
  yield* Effect.log("Task completed")
  return "result"
})

const program = Effect.gen(function*() {
  const fiber = yield* longRunningTask.pipe(Effect.forkChild)

  // or fork a fiber that starts immediately:
  yield* longRunningTask.pipe(Effect.forkChild({ startImmediately: true }))

  yield* Effect.log("Task forked, continuing...")
  const result = yield* Fiber.join(fiber)
  return result
})
```

**Signature**

```ts
declare const forkChild: <Arg extends Effect<any, any, any> | { readonly startImmediately?: boolean | undefined; readonly uninterruptible?: boolean | "inherit" | undefined; } | undefined = { readonly startImmediately?: boolean | undefined; readonly uninterruptible?: boolean | "inherit" | undefined; }>(effectOrOptions?: Arg, options?: { readonly startImmediately?: boolean | undefined; readonly uninterruptible?: boolean | "inherit" | undefined; } | undefined) => [Arg] extends [Effect<infer _A, infer _E, infer _R>] ? Effect<Fiber<_A, _E>, never, _R> : <A, E, R>(self: Effect<A, E, R>) => Effect<Fiber<A, E>, never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8036)

Since v4.0.0