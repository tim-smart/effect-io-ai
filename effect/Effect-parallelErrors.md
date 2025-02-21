# parallelErrors

Combines all errors from concurrent operations into a single error.

**Details**

This function is used when you have multiple operations running at the same
time, and you want to capture all the errors that occur across those
operations. Instead of handling each error separately, it combines all the
errors into one unified error.

**When to Use**

When using this function, any errors that occur in the concurrently running
operations will be grouped together into a single error. This helps simplify
error handling in cases where you don't need to differentiate between each
failure, but simply want to know that multiple failures occurred.

To import and use `parallelErrors` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.parallelErrors
```

**Example**

```ts
import { Effect } from "effect"

const fail1 = Effect.fail("Oh uh!")
const fail2 = Effect.fail("Oh no!")
const die = Effect.dieMessage("Boom!")

// Run all effects concurrently and capture all errors
const program = Effect.all([fail1, fail2, die], {
  concurrency: "unbounded"
}).pipe(Effect.asVoid, Effect.parallelErrors)

// Effect.runPromiseExit(program).then(console.log)
// Output:
// {
//   _id: 'Exit',
//   _tag: 'Failure',
//   cause: { _id: 'Cause', _tag: 'Fail', failure: [ 'Oh uh!', 'Oh no!' ] }
// }
```

**Signature**

```ts
export declare const parallelErrors: <A, E, R>(self: Effect<A, E, R>) => Effect<A, Array<E>, R>
```
