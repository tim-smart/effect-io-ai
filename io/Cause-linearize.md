# linearize

Linearizes the specified cause into a `HashSet` of parallel causes where each
parallel cause contains a linear sequence of failures.

Part of the `Cause` module, imported from `@effect/io/Cause`.

**Signature**

```ts
export declare const linearize: <E>(self: Cause<E>) => HashSet.HashSet<Cause<E>>
```
