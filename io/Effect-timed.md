# timed

Returns a new effect that executes this one and times the execution.

To import and use `timed` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.timed
```

**Signature**

```ts
export declare const timed: <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, [Duration.Duration, A]>
```
