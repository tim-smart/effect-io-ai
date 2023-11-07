# ensuring

Returns an effect that, if this effect _starts_ execution, then the
specified `finalizer` is guaranteed to be executed, whether this effect
succeeds, fails, or is interrupted.

For use cases that need access to the effect's result, see `onExit`.

Finalizers offer very powerful guarantees, but they are low-level, and
should generally not be used for releasing resources. For higher-level
logic built on `ensuring`, see the `acquireRelease` family of methods.

To import and use `ensuring` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.ensuring
```

**Signature**

```ts
export declare const ensuring: {
  <R1, X>(finalizer: Effect<R1, never, X>): <R, E, A>(self: Effect<R, E, A>) => Effect<R1 | R, E, A>
  <R, E, A, R1, X>(self: Effect<R, E, A>, finalizer: Effect<R1, never, X>): Effect<R | R1, E, A>
}
```
