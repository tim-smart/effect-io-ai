## drainFork

Drains the provided stream in the background for as long as this stream is
running. If this stream ends before `other`, `other` will be interrupted.
If `other` fails, this stream will fail with that error.

**Signature**

```ts
declare const drainFork: { <A2, E2, R2>(that: Stream<A2, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>): Stream<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1354)

Since v2.0.0