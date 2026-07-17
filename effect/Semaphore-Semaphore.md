Package: `effect`<br />
Module: `Semaphore`<br />

## Semaphore.Semaphore

A counting semaphore that coordinates concurrent access with permits.

**When to use**

Use to coordinate concurrent effects that need bounded access to a shared
resource.

**Details**

Effects can acquire permits, wait until enough permits are available,
release permits, or run with permits that are automatically released when
the effect exits.

**Example** (Controlling concurrent access)

```ts
import { Effect, Semaphore } from "effect"

// Create and use a semaphore for controlling concurrent access
const program = Effect.gen(function*() {
  const semaphore = yield* Semaphore.make(2)

  return yield* semaphore.withPermits(1)(
    Effect.succeed("Resource accessed")
  )
})
```

**See**

- `make` for creating a semaphore inside Effect code
- `makeUnsafe` for creating a semaphore synchronously

**Signature**

```ts
export interface Semaphore {
  /**
   * Adjusts the number of permits available in the semaphore.
   *
   * **When to use**
   *
   * Use to change the total permit count of an existing semaphore.
   */
  resize(this: Semaphore, permits: number): Effect.Effect<void>

  /**
   * Runs an effect with the given number of permits and releases the permits
   * when the effect completes.
   *
   * **When to use**
   *
   * Use to run an effect while holding a specified number of semaphore permits.
   *
   * **Details**
   *
   * This function acquires the specified number of permits before executing
   * the provided effect. Once the effect finishes, the permits are released.
   * If insufficient permits are available, the function will wait until they
   * are released by other tasks.
   */
  withPermits(this: Semaphore, permits: number): <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>

  /**
   * Runs an effect with the given number of permits and releases the permits
   * when the effect completes.
   *
   * **When to use**
   *
   * Use to run an effect while holding exactly one semaphore permit.
   *
   * **Details**
   *
   * This function acquires the specified number of permits before executing
   * the provided effect. Once the effect finishes, the permits are released.
   * If insufficient permits are available, the function will wait until they
   * are released by other tasks.
   */
  withPermit<A, E, R>(self: Effect.Effect<A, E, R>): Effect.Effect<A, E, R>

  /**
   * Runs an effect only if the specified number of permits are immediately
   * available.
   *
   * **When to use**
   *
   * Use when guarded work should run only if the requested permits are
   * immediately available.
   *
   * **Details**
   *
   * This function attempts to acquire the specified number of permits. If they
   * are available, it runs the effect and releases the permits after the effect
   * completes. If permits are not available, the effect does not execute, and
   * the result is `Option.none`.
   */
  withPermitsIfAvailable(
    this: Semaphore,
    permits: number
  ): <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<Option.Option<A>, E, R>

  /**
   * Acquires the specified number of permits and returns the resulting
   * available permits, suspending the task if they are not yet available.
   * Concurrent pending `take` calls are processed in a first-in, first-out manner.
   *
   * **When to use**
   *
   * Use to manually acquire permits for lower-level coordination protocols.
   */
  take(this: Semaphore, permits: number): Effect.Effect<number>

  /**
   * Releases the specified number of permits and returns the resulting
   * available permits.
   *
   * **When to use**
   *
   * Use to manually return permits acquired by a lower-level coordination
   * protocol.
   */
  release(this: Semaphore, permits: number): Effect.Effect<number>

  /**
   * Releases all permits held by this semaphore and returns the resulting available permits.
   *
   * **When to use**
   *
   * Use to return every currently taken permit to the semaphore at once.
   */
  readonly releaseAll: Effect.Effect<number>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Semaphore.ts#L55)

Since v4.0.0