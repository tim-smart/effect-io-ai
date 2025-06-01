Package: `effect`<br />
Module: `Effect`<br />

## Effect.option

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

**Example** (Using Effect.option to Handle Errors)

```ts
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

**See**

- `either` for a version that uses `Either` instead.
- `exit` for a version that encapsulates both recoverable errors and defects in an `Exit`.

**Signature**

```ts
declare const option: <A, E, R>(self: Effect<A, E, R>) => Effect<Option.Option<A>, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L8116)

Since v2.0.0