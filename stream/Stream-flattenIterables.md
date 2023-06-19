# flattenIterables

Submerges the iterables carried by this stream into the stream's structure,
while still preserving them.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const flattenIterables: <R, E, A>(self: Stream<R, E, Iterable<A>>) => Stream<R, E, A>
```
