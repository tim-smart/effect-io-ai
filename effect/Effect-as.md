# as

This function maps the success value of an `Effect` value to a specified
constant value.

To import and use `as` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.as
```

**Signature**

```ts
export declare const as: {
  <B>(value: B): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, B>
  <R, E, A, B>(self: Effect<R, E, A>, value: B): Effect<R, E, B>
}
```
