# andThenEither

Returns a new schedule that first executes this schedule to completion, and
then executes the specified schedule to completion.

To import and use `andThenEither` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.andThenEither
```

**Signature**

```ts
export declare const andThenEither: {
  <Env2, In2, Out2>(
    that: Schedule<Env2, In2, Out2>
  ): <Env, In, Out>(self: Schedule<Env, In, Out>) => Schedule<Env2 | Env, In & In2, Either.Either<Out, Out2>>
  <Env, In, Out, Env2, In2, Out2>(
    self: Schedule<Env, In, Out>,
    that: Schedule<Env2, In2, Out2>
  ): Schedule<Env | Env2, In & In2, Either.Either<Out, Out2>>
}
```
