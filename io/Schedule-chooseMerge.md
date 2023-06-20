# chooseMerge

Returns a new schedule that chooses between two schedules with a common
output.

To import and use `chooseMerge` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.chooseMerge
```

**Signature**

```ts
export declare const chooseMerge: {
  <Env2, In2, Out2>(that: Schedule<Env2, In2, Out2>): <Env, In, Out>(
    self: Schedule<Env, In, Out>
  ) => Schedule<Env2 | Env, Either.Either<In, In2>, Out2 | Out>
  <Env, In, Out, Env2, In2, Out2>(self: Schedule<Env, In, Out>, that: Schedule<Env2, In2, Out2>): Schedule<
    Env | Env2,
    Either.Either<In, In2>,
    Out | Out2
  >
}
```
