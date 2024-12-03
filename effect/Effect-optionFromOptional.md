# optionFromOptional

Converts an effect that may fail with a `NoSuchElementException` into an
effect that succeeds with an `Option`.

**Details**

If the original effect succeeds, its value is wrapped in `Option.some`. If
the effect fails with `Cause.NoSuchElementException`, the failure is mapped
to `Option.none` in the success channel. Other types of failures are left
unchanged.

To import and use `optionFromOptional` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.optionFromOptional
```

**Example**

```ts
import { Effect } from "effect"

//      ┌─── Effect<number, NoSuchElementException, never>
//      ▼
const maybe1 = Effect.fromNullable(1)

//      ┌─── Effect<Option<number>, never, never>
//      ▼
const option1 = Effect.optionFromOptional(maybe1)

Effect.runPromise(option1).then(console.log)
// Output: { _id: 'Option', _tag: 'Some', value: 1 }

//      ┌─── Effect<number, NoSuchElementException, never>
//      ▼
const maybe2 = Effect.fromNullable(null as number | null)

//      ┌─── Effect<Option<number>, never, never>
//      ▼
const option2 = Effect.optionFromOptional(maybe2)

Effect.runPromise(option2).then(console.log)
// Output: { _tag: 'None' }
```

**Signature**

```ts
export declare const optionFromOptional: <A, E, R>(
  self: Effect<A, E, R>
) => Effect<Option.Option<A>, Exclude<E, Cause.NoSuchElementException>, R>
```
