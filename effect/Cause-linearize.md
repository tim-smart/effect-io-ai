Package: `effect`<br />
Module: `Cause`<br />

## Cause.linearize

Linearizes a `Cause` into a set of parallel causes, each containing a
sequential chain of failures.

**Details**

This function reorganizes the cause structure so that you can analyze each
parallel branch separately, even if they have multiple sequential errors.

**Signature**

```ts
declare const linearize: <E>(self: Cause<E>) => HashSet.HashSet<Cause<E>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L948)

Since v2.0.0