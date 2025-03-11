## RuntimeFiber

A runtime fiber that is executing an effect. Runtime fibers have an
identity and a trace.

**Signature**

```ts
export interface RuntimeFiber<out A, out E = never> extends Fiber<A, E>, Fiber.RuntimeVariance<A, E> {
  /**
   * Reads the current number of ops that have occurred since the last yield
   */
  get currentOpCount(): number

  /**
   * Reads the current value of a fiber ref
   */
  getFiberRef<X>(fiberRef: FiberRef<X>): X

  /**
   * The identity of the fiber.
   */
  id(): FiberId.Runtime

  /**
   * The status of the fiber.
   */
  readonly status: Effect.Effect<FiberStatus.FiberStatus>

  /**
   * Returns the current `RuntimeFlags` the fiber is running with.
   */
  readonly runtimeFlags: Effect.Effect<RuntimeFlags.RuntimeFlags>

  /**
   * Adds an observer to the list of observers.
   */
  addObserver(observer: (exit: Exit.Exit<A, E>) => void): void

  /**
   * Removes the specified observer from the list of observers that will be
   * notified when the fiber exits.
   */
  removeObserver(observer: (exit: Exit.Exit<A, E>) => void): void

  /**
   * Retrieves all fiber refs of the fiber.
   */
  getFiberRefs(): FiberRefs.FiberRefs

  /**
   * Unsafely observes the fiber, but returns immediately if it is not
   * already done.
   */
  unsafePoll(): Exit.Exit<A, E> | null

  /**
   * In the background, interrupts the fiber as if interrupted from the
   * specified fiber. If the fiber has already exited, the returned effect will
   * resume immediately. Otherwise, the effect will resume when the fiber exits.
   */
  unsafeInterruptAsFork(fiberId: FiberId.FiberId): void

  /**
   * Gets the current context
   */
  get currentContext(): Context<never>

  /**
   * Gets the current context
   */
  get currentDefaultServices(): Context<DefaultServices>

  /**
   * Gets the current scheduler
   */
  get currentScheduler(): Scheduler

  /**
   * Gets the current tracer
   */
  get currentTracer(): Tracer

  /**
   * Gets the current span
   */
  get currentSpan(): AnySpan | undefined

  /**
   * Gets the current supervisor
   */
  get currentSupervisor(): Supervisor<unknown>

  readonly [Unify.typeSymbol]?: unknown
  readonly [Unify.unifySymbol]?: RuntimeFiberUnify<this>
  readonly [Unify.ignoreSymbol]?: RuntimeFiberUnifyIgnore
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L129)

Since v2.0.0