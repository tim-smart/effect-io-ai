Package: `effect`<br />
Module: `Effect`<br />

## Effect.fromNullable

Safely handles nullable values by creating an effect that fails for `null` or
`undefined`.

**Details**

This function ensures that an input value is non-null and non-undefined
before processing it. If the value is valid, the effect succeeds with the
value. If the value is `null` or `undefined`, the effect fails with a
`NoSuchElementException`. This is particularly useful for avoiding
null-related errors by clearly separating valid values from invalid ones in
effectful computations.

The failure with `NoSuchElementException` allows you to explicitly handle
cases where a value is expected but not provided, leading to safer and more
predictable code.

**When to Use**

Use this function when working with values that may be `null` or `undefined`
and you want to ensure that only non-null values are processed. It helps
enforce null-safety and makes error handling more explicit.

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
declare const fromNullable: <A>(value: A) => Effect<NonNullable<A>, Cause.NoSuchElementException>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L13210)

Since v2.0.0