# orElse

Tries one effect, and if it fails, attempts another effect as a fallback.

`orElse` allows you to attempt to run an effect, and if it fails, you
can provide a fallback effect to run instead. This is useful for handling
failures gracefully by defining an alternative effect to execute if the first
one encounters an error.

To import and use `orElse` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.orElse
undefined

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
