# fromEffect

Either emits the success value of this effect or terminates the stream
with the failure value of this effect.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const fromEffect: <R, E, A>(effect: Effect.Effect<R, E, A>) => Stream<R, E, A>
```
