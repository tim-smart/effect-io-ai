## execute

Creates a stream that executes the specified effect but emits no elements.

**Signature**

```ts
declare const execute: <X, E, R>(effect: Effect.Effect<X, E, R>) => Stream<never, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1558)

Since v2.0.0