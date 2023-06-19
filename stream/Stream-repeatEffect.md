# repeatEffect

Creates a stream from an effect producing a value of type `A` which repeats
forever.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const repeatEffect: <R, E, A>(effect: Effect.Effect<R, E, A>) => Stream<R, E, A>
```
