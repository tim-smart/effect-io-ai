## reduce

Combines all parts of a `Cause` into a single value by starting with an
initial value.

**Details**

This function processes a `Cause` by starting with an initial value (`zero`)
and applying a custom function (`pf`) to combine all elements of the `Cause`
into a single result of type `Z`. The custom function determines how each
part of the `Cause` contributes to the final result. The function can return
an `Option` to either continue combining values or skip specific parts of the
`Cause`.

This function is useful for tasks such as:
- Aggregating error messages from a `Cause` into a single string.
- Summarizing the structure of a `Cause` into a simplified result.
- Filtering or processing only specific parts of a `Cause`.

The reduction proceeds in a top-down manner, visiting all nodes in the
`Cause` structure. This gives you complete control over how each part of the
`Cause` contributes to the final result.

**Signature**

```ts
declare const reduce: { <Z, E>(zero: Z, pf: (accumulator: Z, cause: Cause<E>) => Option.Option<Z>): (self: Cause<E>) => Z; <Z, E>(self: Cause<E>, zero: Z, pf: (accumulator: Z, cause: Cause<E>) => Option.Option<Z>): Z; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L1280)

Since v2.0.0