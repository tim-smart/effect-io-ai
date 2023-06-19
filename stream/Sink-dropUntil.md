# dropUntil

Drops incoming elements until the predicate is satisfied.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const dropUntil: <In>(predicate: Predicate<In>) => Sink<never, never, In, In, unknown>
```
