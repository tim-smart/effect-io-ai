# every

A sink that returns whether all elements satisfy the specified predicate.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const every: <In>(predicate: Predicate<In>) => Sink<never, never, In, In, boolean>
```
