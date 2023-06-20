# right

Returns a new schedule that makes this schedule available on the `Right`
side of an `Either` input, allowing propagating some type `X` through this
channel on demand.

To import and use `right` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.right
```

**Signature**

```ts
export declare const right: <Env, In, Out, X>(
  self: Schedule<Env, In, Out>
) => Schedule<Env, Either.Either<X, In>, Either.Either<X, Out>>
```
