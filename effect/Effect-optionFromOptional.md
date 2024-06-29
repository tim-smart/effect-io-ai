# optionFromOptional

Wraps the success value of this effect with `Option.some`, and maps
`Cause.NoSuchElementException` to `Option.none`.

To import and use `optionFromOptional` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.optionFromOptional
```

**Signature**

```ts
export declare const optionFromOptional: <A, E, R>(
  self: Effect<A, E, R>
) => Effect<Option.Option<A>, Exclude<E, Cause.NoSuchElementException>, R>
```
