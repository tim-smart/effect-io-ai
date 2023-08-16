# optionFromOptional

Wraps the success value of this effect with `Option.some`, and maps
`Cause.NoSuchElementException` to `Option.none`.

To import and use `optionFromOptional` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.optionFromOptional
```

**Signature**

```ts
export declare const optionFromOptional: <R, E, A>(
  self: Effect<R, E, A>
) => Effect<R, Exclude<E, Cause.NoSuchElementException>, Option.Option<A>>
```
