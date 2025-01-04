# orElse

Attempts one effect, and if it fails, falls back to another effect.

**Details**

This function allows you to try executing an effect, and if it fails
(produces an error), a fallback effect is executed instead. The fallback
effect is defined as a lazy argument, meaning it will only be evaluated if
the first effect fails. This provides a way to recover from errors by
specifying an alternative path of execution.

The error type of the resulting effect will be that of the fallback effect,
as the first effect's error is replaced when the fallback is executed.

To import and use `orElse` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.orElse
```

**Example**

```ts
import { Effect } from "effect"

const success = Effect.succeed("success")
const failure = Effect.fail("failure")
const fallback = Effect.succeed("fallback")

// Try the success effect first, fallback is not used
const program1 = Effect.orElse(success, () => fallback)
console.log(Effect.runSync(program1))
// Output: "success"

// Try the failure effect first, fallback is used
const program2 = Effect.orElse(failure, () => fallback)
console.log(Effect.runSync(program2))
// Output: "fallback"
```

**Signature**

```ts
export declare const orElse: {
  <A2, E2, R2>(that: LazyArg<Effect<A2, E2, R2>>): <A, E, R>(self: Effect<A, E, R>) => Effect<A2 | A, E2, R2 | R>
  <A, E, R, A2, E2, R2>(self: Effect<A, E, R>, that: LazyArg<Effect<A2, E2, R2>>): Effect<A2 | A, E2, R2 | R>
}
```
