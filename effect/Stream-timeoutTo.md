## timeoutTo

Switches the stream if it does not produce a value after the specified
duration.

**Signature**

```ts
declare const timeoutTo: { <A2, E2, R2>(duration: Duration.DurationInput, that: Stream<A2, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, duration: Duration.DurationInput, that: Stream<A2, E2, R2>): Stream<A | A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5151)

Since v2.0.0