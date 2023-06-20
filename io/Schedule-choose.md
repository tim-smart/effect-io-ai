# choose

Returns a new schedule that allows choosing between feeding inputs to this
schedule, or feeding inputs to the specified schedule.

To import and use `choose` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.choose
```

**Signature**

```ts
export declare const choose: {
  <Env2, In2, Out2>(that: Schedule<Env2, In2, Out2>): <Env, In, Out>(
    self: Schedule<Env, In, Out>
  ) => Schedule<Env2 | Env, Either.Either<In, In2>, Either.Either<Out, Out2>>
  <Env, In, Out, Env2, In2, Out2>(self: Schedule<Env, In, Out>, that: Schedule<Env2, In2, Out2>): Schedule<
    Env | Env2,
    Either.Either<In, In2>,
    Either.Either<Out, Out2>
  >
}
```
