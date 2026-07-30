Package: `effect`<br />
Module: `Cause`<br />

## Cause.size

Calculates the size of a `Cause`.

**Details**

This function returns the total number of `Cause` nodes in the semiring
structure, reflecting how many individual error elements are recorded.

**Signature**

```ts
declare const size: <E>(self: Cause<E>) => number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L736)

Since v2.0.0