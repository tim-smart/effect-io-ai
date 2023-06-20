# someOrFailException

Extracts the optional value, or fails with a `NoSuchElementException`.

To import and use `someOrFailException` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.someOrFailException
```

**Signature**

```ts
export declare const someOrFailException: <R, E, A>(
  self: Effect<R, E, Option.Option<A>>
) => Effect<R, Cause.NoSuchElementException | E, A>
```
