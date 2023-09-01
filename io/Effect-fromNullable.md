# fromNullable

Returns an effect that errors with `NoSuchElementException` if the value is
null or undefined, otherwise succeeds with the value.

To import and use `fromNullable` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.fromNullable
```

**Signature**

```ts
export declare const fromNullable: <A>(value: A) => Effect<never, Cause.NoSuchElementException, NonNullable<A>>
```
