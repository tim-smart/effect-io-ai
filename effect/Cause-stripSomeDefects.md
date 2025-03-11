## stripSomeDefects

Removes matching defects from a `Cause` using a partial function, returning
the remainder.

**Details**

This function applies a user-defined extraction function to each defect
(`Die`). If the function matches the defect, that defect is removed. If all
defects match, the result is `None`. Otherwise, you get a `Cause` with the
unmatched defects.

**Signature**

```ts
declare const stripSomeDefects: { (pf: (defect: unknown) => Option.Option<unknown>): <E>(self: Cause<E>) => Option.Option<Cause<E>>; <E>(self: Cause<E>, pf: (defect: unknown) => Option.Option<unknown>): Option.Option<Cause<E>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L979)

Since v2.0.0