Package: `effect`<br />
Module: `Cause`<br />

## Cause.filter

Preserves parts of a `Cause` that match a given predicate.

**Details**

This function allows you to retain only the parts of a `Cause` structure that
match a specified predicate or refinement. Any parts of the `Cause` that do
not match the provided condition are excluded from the result.

You can use this function in two ways:
- With a `Predicate`: A function that evaluates whether a `Cause` should be
  retained based on its value.
- With a `Refinement`: A more specific predicate that can refine the type of
  the `Cause`.

This is useful when you need to extract specific types of errors, defects, or
interruptions from a `Cause` while discarding unrelated parts.

**Signature**

```ts
declare const filter: { <E, EB extends E>(refinement: Refinement<Cause<NoInfer<E>>, Cause<EB>>): (self: Cause<E>) => Cause<EB>; <E>(predicate: Predicate<Cause<NoInfer<E>>>): (self: Cause<E>) => Cause<E>; <E, EB extends E>(self: Cause<E>, refinement: Refinement<Cause<E>, Cause<EB>>): Cause<EB>; <E>(self: Cause<E>, predicate: Predicate<Cause<E>>): Cause<E>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L1198)

Since v2.0.0