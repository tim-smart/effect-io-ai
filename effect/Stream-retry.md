Package: `effect`<br />
Module: `Stream`<br />

## Stream.retry

When the stream fails, retry it according to the given schedule

This retries the entire stream, so will re-execute all of the stream's
acquire operations.

The schedule is reset as soon as the first element passes through the
stream again.

**Signature**

```ts
declare const retry: { <E0 extends E, R2, E, X>(schedule: Schedule.Schedule<X, E0, R2>): <A, R>(self: Stream<A, E, R>) => Stream<A, E, R2 | R>; <A, E, R, X, E0 extends E, R2>(self: Stream<A, E, R>, schedule: Schedule.Schedule<X, E0, R2>): Stream<A, E, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4065)

Since v2.0.0