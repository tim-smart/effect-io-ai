# repeatWhileEquals

Repeats this effect for as long as its value is equal to the specified
value or until the first failure.

To import and use `repeatWhileEquals` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.repeatWhileEquals
```

**Signature**

```ts
export declare const repeatWhileEquals: {
  <A>(value: A): <R, E>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(self: Effect<R, E, A>, value: A): Effect<R, E, A>
}
```
