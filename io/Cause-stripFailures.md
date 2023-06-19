# stripFailures

Remove all `Fail` and `Interrupt` nodes from the specified cause, and return
a cause containing only `Die` cause/finalizer defects.

Part of the `Cause` module, imported from `@effect/io/Cause`.

**Signature**

```ts
export declare const stripFailures: <E>(self: Cause<E>) => Cause<never>
```
