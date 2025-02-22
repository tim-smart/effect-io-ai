# option

Encapsulates the result of an effect in an `Option`.

**Details**

This function wraps the outcome of an effect in an `Option` type. If the
original effect succeeds, the success value is wrapped in `Option.some`. If
the effect fails, the failure is converted to `Option.none`.

This is particularly useful for scenarios where you want to represent the
absence of a value explicitly, without causing the resulting effect to fail.
The resulting effect has an error type of `never`, meaning it cannot fail
directly. However, unrecoverable errors, also referred to as defects, are
not captured and will still result in failure.

To import and use `option` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.option
```

**Example**

```ts
// Title: Using Effect.option to Handle Errors
import { Effect } from "effect"

const maybe1 = Effect.option(Effect.succeed(1))

// Effect.runPromiseExit(maybe1).then(console.log)
// Output:
// {
//   _id: 'Exit',
//   _tag: 'Success',
//   value: { _id: 'Option', _tag: 'Some', value: 1 }
// }

const maybe2 = Effect.option(Effect.fail("Uh oh!"))

// Effect.runPromiseExit(maybe2).then(console.log)
// Output:
// {
//   _id: 'Exit',
//   _tag: 'Success',
//   value: { _id: 'Option', _tag: 'None' }
// }

const maybe3 = Effect.option(Effect.die("Boom!"))

// Effect.runPromiseExit(maybe3).then(console.log)
// Output:
// {
//   _id: 'Exit',
//   _tag: 'Failure',
//   cause: { _id: 'Cause', _tag: 'Die', defect: 'Boom!' }
// }
```

**Signature**

```ts
export declare const option: <A, E, R>(self: Effect<A, E, R>) => Effect<Option.Option<A>, never, R>
```
