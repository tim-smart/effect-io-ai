## when

Returns the specified stream if the given condition is satisfied, otherwise
returns an empty stream.

**Signature**

```ts
declare const when: { (test: LazyArg<boolean>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R>(self: Stream<A, E, R>, test: LazyArg<boolean>): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5489)

Since v2.0.0