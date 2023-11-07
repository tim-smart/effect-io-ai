# stripSomeDefects

Remove all `Die` causes that the specified partial function is defined at,
returning `Some` with the remaining causes or `None` if there are no
remaining causes.

To import and use `stripSomeDefects` from the "Cause" module:

```ts
import * as Cause from 'effect/Cause'

// Can be accessed like this
Cause.stripSomeDefects
```

**Signature**

```ts
export declare const stripSomeDefects: {
  (pf: (defect: unknown) => Option.Option<unknown>): <E>(self: Cause<E>) => Option.Option<Cause<E>>
  <E>(self: Cause<E>, pf: (defect: unknown) => Option.Option<unknown>): Option.Option<Cause<E>>
}
```
