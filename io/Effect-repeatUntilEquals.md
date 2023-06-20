# repeatUntilEquals

Repeats this effect until its value is equal to the specified value or
until the first failure.

To import and use `repeatUntilEquals` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.repeatUntilEquals
```

**Signature**

```ts
export declare const repeatUntilEquals: {
  <A>(value: A): <R, E>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(self: Effect<R, E, A>, value: A): Effect<R, E, A>
}
```
