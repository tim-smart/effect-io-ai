Package: `effect`<br />
Module: `Option`<br />

## Option.partitionMap

Splits an `Option` into two `Option`s based on the result of a mapping
function that produces an `Either`.

**Details**

This function takes an `Option` and a mapping function `f` that converts its
value into an `Either`. It returns a tuple of two `Option`s:

- The first `Option` (`left`) contains the value from the `Left` side of the
  `Either` if it exists, otherwise `None`.
- The second `Option` (`right`) contains the value from the `Right` side of
  the `Either` if it exists, otherwise `None`.

If the input `Option` is `None`, both returned `Option`s are `None`.

This utility is useful for filtering and categorizing the contents of an
`Option` based on a bifurcating computation.

**Signature**

```ts
declare const partitionMap: { <A, B, C>(f: (a: A) => Either<C, B>): (self: Option<A>) => [left: Option<B>, right: Option<C>]; <A, B, C>(self: Option<A>, f: (a: A) => Either<C, B>): [left: Option<B>, right: Option<C>]; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L1569)

Since v2.0.0