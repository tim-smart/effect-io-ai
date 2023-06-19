# failSync

Constructs a layer that fails with the specified error.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const failSync: <E>(evaluate: LazyArg<E>) => Layer<never, E, unknown>
```
