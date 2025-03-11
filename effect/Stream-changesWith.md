## changesWith

Returns a new stream that only emits elements that are not equal to the
previous element emitted, using the specified function to determine whether
two elements are equal.

**Signature**

```ts
declare const changesWith: { <A>(f: (x: A, y: A) => boolean): <E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R>(self: Stream<A, E, R>, f: (x: A, y: A) => boolean): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L930)

Since v2.0.0