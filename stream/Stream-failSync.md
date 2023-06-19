# failSync

Terminates with the specified lazily evaluated error.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const failSync: <E>(evaluate: LazyArg<E>) => Stream<never, E, never>
```
