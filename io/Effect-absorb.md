# absorb

This function transforms an `Effect` value that may fail with a defect
into a new `Effect` value that may fail with an unknown error.

The resulting `Effect` value will have the same context and success
type as the original `Effect` value, but it will have a more general
error type that allows it to fail with any type of error.

To import and use `absorb` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.absorb
```

**Signature**

```ts
export declare const absorb: <R, E, A>(self: Effect<R, E, A>) => Effect<R, unknown, A>
```
