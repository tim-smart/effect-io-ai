# failCause

Constructs a new `Exit.Failure` from the specified `Cause` of type `E`.

Part of the `Exit` module, imported from `@effect/io/Exit`.

**Signature**

```ts
export declare const failCause: <E>(cause: Cause.Cause<E>) => Exit<E, never>
```
