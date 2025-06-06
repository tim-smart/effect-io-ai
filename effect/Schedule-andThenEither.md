Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.andThenEither

Runs two schedules sequentially, collecting results in an `Either`.

**Details**

This function combines two schedules in sequence. The first schedule runs to
completion, and then the second schedule starts and runs to completion as
well. The outputs of both schedules are collected into an `Either` structure:
- `Either.Left` contains the output of the second schedule.
- `Either.Right` contains the output of the first schedule.

This is useful when you need to switch from one schedule to another after the
first one finishes, while still keeping track of which schedule produced each
result.

**See**

- `andThen` If you need to merge the outputs of both schedules.

**Signature**

```ts
declare const andThenEither: { <Out2, In2, R2>(that: Schedule<Out2, In2, R2>): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Either.Either<Out2, Out>, In & In2, R2 | R>; <Out, In, R, Out2, In2, R2>(self: Schedule<Out, In, R>, that: Schedule<Out2, In2, R2>): Schedule<Either.Either<Out2, Out>, In & In2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L279)

Since v2.0.0