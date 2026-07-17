Package: `effect`<br />
Module: `ManagedRuntime`<br />

## ManagedRuntime.ManagedRuntime

A runtime built from a layer that can execute effects requiring that layer's
services.

**When to use**

Use as the reusable runtime value returned by `make` when application entry
points or integration code need to run many effects against the same
layer-built services.

**Details**

The runtime builds and caches its service context and owns the scope for
resources acquired by the layer.

**Gotchas**

Dispose the runtime with `dispose` or `disposeEffect` when it is no longer
needed.

**See**

- `make` for constructing a managed runtime from a layer
- `Layer.build` for lower-level scoped layer construction

**Signature**

```ts
export interface ManagedRuntime<in R, out ER> {
  readonly [TypeId]: typeof TypeId
  readonly memoMap: Layer.MemoMap
  readonly contextEffect: Effect.Effect<Context.Context<R>, ER>
  readonly context: () => Promise<Context.Context<R>>

  // internal
  readonly scope: Scope.Closeable
  // internal
  cachedContext: Context.Context<R> | undefined

  /**
   * Executes the effect using the provided Scheduler or using the global
   * Scheduler if not provided
   *
   * **When to use**
   *
   * Use to fork an effect against this runtime's services and get the running
   * fiber.
   */
  readonly runFork: <A, E>(
    self: Effect.Effect<A, E, R>,
    options?: Effect.RunOptions
  ) => Fiber.Fiber<A, E | ER>

  /**
   * Executes the effect synchronously returning the exit.
   *
   * **When to use**
   *
   * Use when invoking this effectful method at the edges of your
   * program.
   */
  readonly runSyncExit: <A, E>(effect: Effect.Effect<A, E, R>) => Exit.Exit<A, ER | E>

  /**
   * Executes the effect synchronously throwing in case of errors or async boundaries.
   *
   * **When to use**
   *
   * Use when invoking this effectful method at the edges of your
   * program.
   */
  readonly runSync: <A, E>(effect: Effect.Effect<A, E, R>) => A

  /**
   * Executes the effect asynchronously, eventually passing the exit value to
   * the specified callback.
   *
   * **When to use**
   *
   * Use when invoking this effectful method at the edges of your
   * program.
   */
  readonly runCallback: <A, E>(
    effect: Effect.Effect<A, E, R>,
    options?:
      | Effect.RunOptions & {
        readonly onExit: (exit: Exit.Exit<A, E | ER>) => void
      }
      | undefined
  ) => (interruptor?: number | undefined) => void

  /**
   * Runs the `Effect`, returning a JavaScript `Promise` that will be resolved
   * with the value of the effect once the effect has been executed, or will be
   * rejected with the first error or exception throw by the effect.
   *
   * **When to use**
   *
   * Use when invoking this effectful method at the edges of your
   * program.
   */
  readonly runPromise: <A, E>(effect: Effect.Effect<A, E, R>, options?: Effect.RunOptions) => Promise<A>

  /**
   * Runs the `Effect`, returning a JavaScript `Promise` that will be resolved
   * with the `Exit` state of the effect once the effect has been executed.
   *
   * **When to use**
   *
   * Use when invoking this effectful method at the edges of your
   * program.
   */
  readonly runPromiseExit: <A, E>(
    effect: Effect.Effect<A, E, R>,
    options?: Effect.RunOptions
  ) => Promise<Exit.Exit<A, ER | E>>

  /**
   * Dispose of the resources associated with the runtime.
   *
   * **When to use**
   *
   * Use to release this runtime's layer resources from Promise-based code.
   */
  readonly dispose: () => Promise<void>

  /**
   * Dispose of the resources associated with the runtime.
   *
   * **When to use**
   *
   * Use to release this runtime's layer resources from an `Effect` workflow.
   */
  readonly disposeEffect: Effect.Effect<void, never, never>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ManagedRuntime.ts#L112)

Since v2.0.0