# collectWhileSuccess

Terminates the stream when encountering the first `Exit.Failure`.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const collectWhileSuccess: <R, E, E2, A>(self: Stream<R, E, Exit.Exit<E2, A>>) => Stream<R, E, A>
```
