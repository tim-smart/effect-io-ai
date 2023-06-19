# failCauseSync

Constructs a layer that fails with the specified cause.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const failCauseSync: <E>(evaluate: LazyArg<Cause.Cause<E>>) => Layer<never, E, unknown>
```
