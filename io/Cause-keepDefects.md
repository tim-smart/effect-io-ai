# keepDefects

Remove all `Fail` and `Interrupt` nodes from the specified cause, and return
a cause containing only `Die` cause/finalizer defects.

Part of the `Cause` module, imported from `@effect/io/Cause`.

**Signature**

```ts
export declare const keepDefects: <E>(self: Cause<E>) => Option.Option<Cause<never>>
```
