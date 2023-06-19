# fromHub

Creates a stream from a subscription to a `Hub`.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const fromHub: <A>(hub: Hub.Hub<A>, maxChunkSize?: number) => Stream<never, never, A>
```
