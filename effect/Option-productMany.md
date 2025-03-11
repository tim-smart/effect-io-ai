## productMany

Combines an `Option` with a collection of `Option`s into a single `Option`
containing a tuple of their values if all are `Some`.

**Details**

This function takes a primary `Option` and a collection of `Option`s and
combines their values into a tuple `[A, ...Array<A>]` if all are `Some`. If
the primary `Option` or any `Option` in the collection is `None`, the result
is `None`.

**Signature**

```ts
declare const productMany: <A>(self: Option<A>, collection: Iterable<Option<A>>) => Option<[A, ...Array<A>]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L1327)

Since v2.0.0