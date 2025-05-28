Package: `effect`<br />
Module: `Stream`<br />

## Stream.timeoutFail

Fails the stream with given error if it does not produce a value after d
duration.

**Signature**

```ts
declare const timeoutFail: { <E2>(error: LazyArg<E2>, duration: Duration.DurationInput): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R>; <A, E, R, E2>(self: Stream<A, E, R>, error: LazyArg<E2>, duration: Duration.DurationInput): Stream<A, E | E2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5143)

Since v2.0.0