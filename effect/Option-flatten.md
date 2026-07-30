Package: `effect`<br />
Module: `Option`<br />

## Option.flatten

Flattens an `Option` of `Option` into a single `Option`.

**Details**

This function takes an `Option` that wraps another `Option` and flattens it
into a single `Option`. If the outer `Option` is `Some`, the function
extracts the inner `Option`. If the outer `Option` is `None`, the result
remains `None`.

This is useful for simplifying nested `Option` structures that may arise
during functional operations.

**Signature**

```ts
declare const flatten: <A>(self: Option<Option<A>>) => Option<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L1170)

Since v2.0.0