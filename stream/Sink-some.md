# some

A sink that returns whether an element satisfies the specified predicate.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const some: <In>(predicate: Predicate<In>) => Sink<never, never, In, In, boolean>
```
