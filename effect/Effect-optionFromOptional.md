Package: `effect`<br />
Module: `Effect`<br />

## Effect.optionFromOptional

Converts an effect that may fail with a `NoSuchElementException` into an
effect that succeeds with an `Option`.

**Details**

This function transforms an effect that might fail with
`Cause.NoSuchElementException` into an effect that succeeds with an `Option`
type. If the original effect succeeds, its value is wrapped in `Option.some`.
If it fails specifically due to a `NoSuchElementException`, the failure is
mapped to `Option.none`. Other types of failures remain unchanged and are
passed through as they are.

This is useful when working with effects where you want to gracefully handle
the absence of a value while preserving other potential failures.

**When to Use**

Use this function when you need to handle missing values as `Option.none`
rather than throwing or propagating errors like `NoSuchElementException`.
It’s ideal for scenarios where you want to explicitly represent optionality
in a type-safe way while retaining other failure information.

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
declare const optionFromOptional: <A, E, R>(self: Effect<A, E, R>) => Effect<Option.Option<A>, Exclude<E, Cause.NoSuchElementException>, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L13298)

Since v2.0.0