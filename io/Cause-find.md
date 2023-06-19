# find

Uses the provided partial function to search the specified cause and attempt
to extract information from it.

Part of the `Cause` module, imported from `@effect/io/Cause`.

**Signature**

```ts
export declare const find: {
  <E, Z>(pf: (cause: Cause<E>) => Option.Option<Z>): (self: Cause<E>) => Option.Option<Z>
  <E, Z>(self: Cause<E>, pf: (cause: Cause<E>) => Option.Option<Z>): Option.Option<Z>
}
```
