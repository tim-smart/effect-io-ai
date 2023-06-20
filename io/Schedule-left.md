# left

Returns a new schedule that makes this schedule available on the `Left`
side of an `Either` input, allowing propagating some type `X` through this
channel on demand.

To import and use `left` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.left
```

**Signature**

```ts
export declare const left: <Env, In, Out, X>(
  self: Schedule<Env, In, Out>
) => Schedule<Env, Either.Either<In, X>, Either.Either<Out, X>>
```
