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
  <Out2, In2, R2>(
    that: Schedule<Out2, In2, R2>
  ): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Either.Either<Out2, Out>, In & In2, R2 | R>
  <Out, In, R, Out2, In2, R2>(
    self: Schedule<Out, In, R>,
    that: Schedule<Out2, In2, R2>
  ): Schedule<Either.Either<Out2, Out>, In & In2, R | R2>
}
```
