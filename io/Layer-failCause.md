# failCause

Constructs a layer that fails with the specified cause.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const failCause: <E>(cause: Cause.Cause<E>) => Layer<never, E, unknown>
```
