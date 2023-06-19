# stripSomeDefects

Remove all `Die` causes that the specified partial function is defined at,
returning `Some` with the remaining causes or `None` if there are no
remaining causes.

Part of the `Cause` module, imported from `@effect/io/Cause`.

**Signature**

```ts
export declare const stripSomeDefects: {
  (pf: (defect: unknown) => Option.Option<unknown>): <E>(self: Cause<E>) => Option.Option<Cause<E>>
  <E>(self: Cause<E>, pf: (defect: unknown) => Option.Option<unknown>): Option.Option<Cause<E>>
}
```
