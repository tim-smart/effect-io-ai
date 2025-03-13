Package: `effect`<br />
Module: `Stream`<br />

## Stream.flattenIterables

Submerges the iterables carried by this stream into the stream's structure,
while still preserving them.

**Signature**

```ts
declare const flattenIterables: <A, E, R>(self: Stream<Iterable<A>, E, R>) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1858)

Since v2.0.0