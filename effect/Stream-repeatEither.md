## repeatEither

Repeats the entire stream using the specified schedule. The stream will
execute normally, and then repeat again according to the provided schedule.
The schedule output will be emitted at the end of each repetition.

**Signature**

```ts
declare const repeatEither: { <B, R2>(schedule: Schedule.Schedule<B, unknown, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<Either.Either<A, B>, E, R2 | R>; <A, E, R, B, R2>(self: Stream<A, E, R>, schedule: Schedule.Schedule<B, unknown, R2>): Stream<Either.Either<A, B>, E, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3962)

Since v2.0.0