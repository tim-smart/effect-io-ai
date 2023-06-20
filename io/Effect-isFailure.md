# isFailure

Returns `true` if this effect is a failure, `false` otherwise.

To import and use `isFailure` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.isFailure
```

**Signature**

```ts
export declare const isFailure: <R, E, A>(self: Effect<R, E, A>) => Effect<R, never, boolean>
```
