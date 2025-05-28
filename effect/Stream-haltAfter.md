Package: `effect`<br />
Module: `Stream`<br />

## Stream.haltAfter

Specialized version of haltWhen which halts the evaluation of this stream
after the given duration.

An element in the process of being pulled will not be interrupted when the
given duration completes. See `interruptAfter` for this behavior.

**Signature**

```ts
declare const haltAfter: { (duration: Duration.DurationInput): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R>(self: Stream<A, E, R>, duration: Duration.DurationInput): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2439)

Since v2.0.0