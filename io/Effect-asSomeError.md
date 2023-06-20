# asSomeError

This function maps the error value of an `Effect` value to a `Some` value
in an `Option` value. If the original `Effect` value succeeds, the returned
`Effect` value will also succeed.

To import and use `asSomeError` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.asSomeError
```

**Signature**

```ts
export declare const asSomeError: <R, E, A>(self: Effect<R, E, A>) => Effect<R, Option.Option<E>, A>
```
