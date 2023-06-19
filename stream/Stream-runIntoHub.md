# runIntoHub

Publishes elements of this stream to a hub. Stream failure and ending will
also be signalled.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const runIntoHub: {
  <E, A>(hub: Hub.Hub<Take.Take<E, A>>): <R>(self: Stream<R, E, A>) => Effect.Effect<R, never, void>
  <R, E, A>(self: Stream<R, E, A>, hub: Hub.Hub<Take.Take<E, A>>): Effect.Effect<R, never, void>
}
```
