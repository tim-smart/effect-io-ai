# orDie

Translates any failure into a stream termination, making the stream
infallible and all failures unchecked.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const orDie: <R, E, A>(self: Stream<R, E, A>) => Stream<R, never, A>
```
