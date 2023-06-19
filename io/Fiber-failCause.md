# failCause

Creates a `Fiber` that has already failed with the specified cause.

Part of the `Fiber` module, imported from `@effect/io/Fiber`.

**Signature**

```ts
export declare const failCause: <E>(cause: Cause.Cause<E>) => Fiber<E, never>
```
