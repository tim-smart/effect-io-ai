# dropUntilEffect

Drops incoming elements until the effectful predicate is satisfied.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const dropUntilEffect: <In, R, E>(
  predicate: (input: In) => Effect.Effect<R, E, boolean>
) => Sink<R, E, In, In, unknown>
```
