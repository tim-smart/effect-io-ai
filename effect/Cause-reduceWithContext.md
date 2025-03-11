## reduceWithContext

Combines all parts of a `Cause` into a single value using a custom reducer
and a context.

**Details**

This function allows you to reduce a `Cause` into a single value of type `Z`
using a custom `CauseReducer`. A `CauseReducer` provides methods to handle
specific parts of the `Cause`, such as failures, defects, or interruptions.
Additionally, this function provides access to a `context` value, which can
be used to carry information or maintain state during the reduction process.

This is particularly useful when the reduction process needs additional
context or configuration, such as:
- Aggregating error details with dynamic formatting.
- Collecting logs or statistics about the `Cause`.
- Performing stateful transformations based on the `context`.

**See**

- `reduce` To reduce a `Cause` without additional context.

**Signature**

```ts
declare const reduceWithContext: { <C, E, Z>(context: C, reducer: CauseReducer<C, E, Z>): (self: Cause<E>) => Z; <C, E, Z>(self: Cause<E>, context: C, reducer: CauseReducer<C, E, Z>): Z; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L1308)

Since v2.0.0