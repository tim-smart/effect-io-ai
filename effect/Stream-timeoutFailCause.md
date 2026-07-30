Package: `effect`<br />
Module: `Stream`<br />

## Stream.timeoutFailCause

Fails the stream with given cause if it does not produce a value after d
duration.

**Signature**

```ts
declare const timeoutFailCause: { <E2>(cause: LazyArg<Cause.Cause<E2>>, duration: Duration.DurationInput): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R>; <A, E, R, E2>(self: Stream<A, E, R>, cause: LazyArg<Cause.Cause<E2>>, duration: Duration.DurationInput): Stream<A, E | E2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5167)

Since v2.0.0