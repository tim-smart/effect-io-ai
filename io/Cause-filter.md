# filter

Filters causes which match the provided predicate out of the specified cause.

Part of the `Cause` module, imported from `@effect/io/Cause`.

**Signature**

```ts
export declare const filter: {
  <E>(predicate: Predicate<Cause<E>>): (self: Cause<E>) => Cause<E>
  <E>(self: Cause<E>, predicate: Predicate<Cause<E>>): Cause<E>
}
```
