# collectWhileSome

Terminates the stream when encountering the first `None`.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const collectWhileSome: <R, E, A>(self: Stream<R, E, Option.Option<A>>) => Stream<R, E, A>
```
