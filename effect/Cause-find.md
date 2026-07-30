Package: `effect`<br />
Module: `Cause`<br />

## Cause.find

Searches a `Cause` using a partial function to extract information.

**Details**

This function allows you to search through a `Cause` using a custom partial
function. The partial function is applied to the `Cause`, and if it matches,
the result is returned wrapped in a `Some`. If no match is found, the result
is `None`.

This is particularly useful when you are only interested in specific types of
errors, defects, or interruption causes within a potentially complex `Cause`
structure. By leveraging a partial function, you can focus on extracting only
the relevant information you care about.

The partial function should return an `Option` indicating whether it matched
and the value it extracted.

**Signature**

```ts
declare const find: { <E, Z>(pf: (cause: Cause<E>) => Option.Option<Z>): (self: Cause<E>) => Option.Option<Z>; <E, Z>(self: Cause<E>, pf: (cause: Cause<E>) => Option.Option<Z>): Option.Option<Z>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L1172)

Since v2.0.0