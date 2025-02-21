# isFailure

Checks if an effect has failed.

**Details**

This function evaluates whether an effect has resulted in a failure. It
returns a boolean value wrapped in an effect, with `true` indicating the
effect failed and `false` otherwise.

The resulting effect cannot fail (`never` in the error channel) but retains
the context of the original effect.

To import and use `isFailure` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.isFailure
```

**Example**

```ts
import { Effect } from "effect"

const failure = Effect.fail("Uh oh!")

// console.log(Effect.runSync(Effect.isFailure(failure)))
// Output: true

const defect = Effect.dieMessage("BOOM!")

// Effect.runSync(Effect.isFailure(defect))
// throws: BOOM!
```

**Signature**

```ts
export declare const isFailure: <A, E, R>(self: Effect<A, E, R>) => Effect<boolean, never, R>
```
