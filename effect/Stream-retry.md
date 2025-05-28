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
declare const retry: { <E, R2, X>(policy: Schedule.Schedule<X, NoInfer<E>, R2>): <A, R>(self: Stream<A, E, R>) => Stream<A, E, R2 | R>; <A, E, R, X, R2>(self: Stream<A, E, R>, policy: Schedule.Schedule<X, NoInfer<E>, R2>): Stream<A, E, R2 | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4066)

Since v2.0.0