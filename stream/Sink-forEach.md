# forEach

A sink that executes the provided effectful function for every element fed
to it.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const forEach: <In, R, E, _>(f: (input: In) => Effect.Effect<R, E, _>) => Sink<R, E, In, never, void>
```
