# validate

Sequentially zips the this result with the specified result. Combines both
`Cause`s when both effects fail.

To import and use `validate` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.validate
```

**Signature**

```ts
export declare const validate: {
  <R2, E2, B>(that: Effect<R2, E2, B>): <R, E, A>(self: Effect<R, E, A>) => Effect<R2 | R, E2 | E, [A, B]>
  <R, E, A, R2, E2, B>(self: Effect<R, E, A>, that: Effect<R2, E2, B>): Effect<R | R2, E | E2, [A, B]>
}
```
