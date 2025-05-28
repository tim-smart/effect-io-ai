Package: `effect`<br />
Module: `Stream`<br />

## Stream.transduce

Applies the transducer to the stream and emits its outputs.

**Signature**

```ts
declare const transduce: { <A2, A, E2, R2>(sink: Sink.Sink<A2, A, A, E2, R2>): <E, R>(self: Stream<A, E, R>) => Stream<A2, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, sink: Sink.Sink<A2, A, A, E2, R2>): Stream<A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5392)

Since v2.0.0