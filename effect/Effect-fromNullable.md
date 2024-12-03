# fromNullable

Creates an effect that fails with a `NoSuchElementException` if the input
value is `null` or `undefined`. If the value is non-null, the effect succeeds
with the value.

**When to Use**

Use `fromNullable` to safely handle potentially nullable values and ensure
that the effect either fails with a clear error or succeeds with the valid
value.

To import and use `fromNullable` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.fromNullable
```

**Example**

```ts
import { Effect } from "effect"

//      ┌─── Effect<number, NoSuchElementException, never>
//      ▼
const maybe1 = Effect.fromNullable(1)

Effect.runPromiseExit(maybe1).then(console.log)
// Output:
// { _id: 'Exit', _tag: 'Success', value: 1 }

//      ┌─── Effect<number, NoSuchElementException, never>
//      ▼
const maybe2 = Effect.fromNullable(null as number | null)

Effect.runPromiseExit(maybe2).then(console.log)
// Output:
// {
//   _id: 'Exit',
//   _tag: 'Failure',
//   cause: {
//     _id: 'Cause',
//     _tag: 'Fail',
//     failure: { _tag: 'NoSuchElementException' }
//   }
// }
```

**Signature**

```ts
export declare const fromNullable: <A>(value: A) => Effect<NonNullable<A>, Cause.NoSuchElementException>
```
