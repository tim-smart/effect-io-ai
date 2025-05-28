Package: `effect`<br />
Module: `Stream`<br />

## Stream.orDie

Translates any failure into a stream termination, making the stream
infallible and all failures unchecked.

**Signature**

```ts
declare const orDie: <A, E, R>(self: Stream<A, E, R>) => Stream<A, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3257)

Since v2.0.0