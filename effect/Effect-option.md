# option

Transforms an effect to encapsulate both failure and success using the
`Option` data type.

**Details**

The `option` function wraps the success or failure of an effect within the
`Option` type, making both cases explicit. If the original effect succeeds,
its value is wrapped in `Option.some`. If it fails, the failure is mapped to
`Option.none`.

The resulting effect cannot fail directly, as the error type is set to
`never`. However, fatal errors like defects are not encapsulated.

To import and use `option` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.option
undefined

**Example**

```ts
// Title: Using Effect.option to Handle Errors
import { Effect } from "effect"

const maybe1 = Effect.option(Effect.succeed(1))

Effect.runPromiseExit(maybe1).then(console.log)
// Output:
// {
//   _id: 'Exit',
//   _tag: 'Success',
//   value: { _id: 'Option', _tag: 'Some', value: 1 }
// }

const maybe2 = Effect.option(Effect.fail("Uh oh!"))

Effect.runPromiseExit(maybe2).then(console.log)
// Output:
// {
//   _id: 'Exit',
//   _tag: 'Success',
//   value: { _id: 'Option', _tag: 'None' }
// }

const maybe3 = Effect.option(Effect.die("Boom!"))

Effect.runPromiseExit(maybe3).then(console.log)
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
