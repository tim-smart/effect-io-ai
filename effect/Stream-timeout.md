Package: `effect`<br />
Module: `Stream`<br />

## Stream.timeout

Ends the stream if it does not produce a value after the specified duration.

**Signature**

```ts
declare const timeout: { (duration: Duration.DurationInput): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R>(self: Stream<A, E, R>, duration: Duration.DurationInput): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5108)

Since v2.0.0