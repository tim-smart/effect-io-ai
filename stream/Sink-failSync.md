# failSync

A sink that always fails with the specified lazily evaluated error.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const failSync: <E>(evaluate: LazyArg<E>) => Sink<never, E, unknown, never, never>
```
