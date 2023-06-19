# execute

Creates a stream that executes the specified effect but emits no elements.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const execute: <R, E, _>(effect: Effect.Effect<R, E, _>) => Stream<R, E, never>
```
