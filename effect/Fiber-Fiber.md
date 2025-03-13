Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.Fiber

A fiber is a lightweight thread of execution that never consumes more than a
whole thread (but may consume much less, depending on contention and
asynchronicity). Fibers are spawned by forking effects, which run
concurrently with the parent effect.

Fibers can be joined, yielding their result to other fibers, or interrupted,
which terminates the fiber, safely releasing all resources.

**Signature**

```ts
export interface Fiber<out A, out E = never> extends Effect.Effect<A, E>, Fiber.Variance<A, E> {
  /**
   * The identity of the fiber.
   */
  id(): FiberId.FiberId

  /**
   * Awaits the fiber, which suspends the awaiting fiber until the result of the
   * fiber has been determined.
   */
  readonly await: Effect.Effect<Exit.Exit<A, E>>

  /**
   * Retrieves the immediate children of the fiber.
   */
  readonly children: Effect.Effect<Array<Fiber.Runtime<any, any>>>

  /**
   * Inherits values from all `FiberRef` instances into current fiber. This
   * will resume immediately.
   */
  readonly inheritAll: Effect.Effect<void>

  /**
   * Tentatively observes the fiber, but returns immediately if it is not
   * already done.
   */
  readonly poll: Effect.Effect<Option.Option<Exit.Exit<A, E>>>

  /**
   * In the background, interrupts the fiber as if interrupted from the
   * specified fiber. If the fiber has already exited, the returned effect will
   * resume immediately. Otherwise, the effect will resume when the fiber exits.
   */
  interruptAsFork(fiberId: FiberId.FiberId): Effect.Effect<void>

  readonly [Unify.typeSymbol]?: unknown
  readonly [Unify.unifySymbol]?: FiberUnify<this>
  readonly [Unify.ignoreSymbol]?: FiberUnifyIgnore
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L65)

Since v2.0.0