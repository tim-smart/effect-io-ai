# fromAsyncIterable

Creates a stream from an `AsyncIterable`.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const fromAsyncIterable: <E, A>(
  iterable: AsyncIterable<A>,
  onError: (e: unknown) => E
) => Stream<never, E, A>
```
