# absolve

This function submerges the error case of an `Either` value into an
`Effect` value. It is the inverse operation of `either`.

If the `Either` value is a `Right` value, then the `Effect` value will
succeed with the value contained in the `Right`. If the `Either` value
is a `Left` value, then the `Effect` value will fail with the error
contained in the `Left`.

To import and use `absolve` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.absolve
```

**Signature**

```ts
export declare const absolve: <R, E, A>(self: Effect<R, E, Either.Either<E, A>>) => Effect<R, E, A>
```
