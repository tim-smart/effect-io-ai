## orDieWith

Keeps none of the errors, and terminates the stream with them, using the
specified function to convert the `E` into a defect.

**Signature**

```ts
declare const orDieWith: { <E>(f: (e: E) => unknown): <A, R>(self: Stream<A, E, R>) => Stream<A, never, R>; <A, E, R>(self: Stream<A, E, R>, f: (e: E) => unknown): Stream<A, never, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3265)

Since v2.0.0