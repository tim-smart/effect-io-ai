# asSome

This function maps the success value of an `Effect` value to a `Some` value
in an `Option` value. If the original `Effect` value fails, the returned
`Effect` value will also fail.

To import and use `asSome` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.asSome
```

**Signature**

```ts
export declare const asSome: <A, E, R>(self: Effect<A, E, R>) => Effect<Option.Option<A>, E, R>
```
