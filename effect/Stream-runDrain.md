## runDrain

Runs the stream only for its effects. The emitted elements are discarded.

**Signature**

```ts
declare const runDrain: <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<void, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4110)

Since v2.0.0