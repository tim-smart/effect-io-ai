# parallelErrors

The `parallelErrors` function captures all failure errors from
concurrent operations and combines them into a single error in the error
channel.

This function is useful when you are running multiple operations concurrently
and you want to gather all the errors that occur. Instead of handling each
error separately, `parallelErrors` consolidates them into one, making
it easier to manage and respond to errors from multiple operations at once.

To import and use `parallelErrors` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.parallelErrors
undefined

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

Effect.runPromiseExit(program).then(console.log)
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
