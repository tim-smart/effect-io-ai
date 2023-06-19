# drain

Converts this stream to a stream that executes its effects but emits no
elements. Useful for sequencing effects using streams:

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const drain: <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, never>
```
