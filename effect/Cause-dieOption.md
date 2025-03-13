Package: `effect`<br />
Module: `Cause`<br />

## Cause.dieOption

Retrieves the first `Die` defect in a `Cause`, if present.

**Details**

This function returns an `Option` containing the first unexpected failure
(`Die`) discovered. It's helpful for diagnosing the primary defect in a chain
of errors.

**Signature**

```ts
declare const dieOption: <E>(self: Cause<E>) => Option.Option<unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L903)

Since v2.0.0