# firstSuccessOf

This function takes an iterable of `Effect` values and returns a new
`Effect` value that represents the first `Effect` value in the iterable
that succeeds. If all of the `Effect` values in the iterable fail, then
the resulting `Effect` value will fail as well.

This function is sequential, meaning that the `Effect` values in the
iterable will be executed in sequence, and the first one that succeeds
will determine the outcome of the resulting `Effect` value.

To import and use `firstSuccessOf` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.firstSuccessOf
```

**Signature**

```ts
export declare const firstSuccessOf: <R, E, A>(effects: Iterable<Effect<R, E, A>>) => Effect<R, E, A>
```
