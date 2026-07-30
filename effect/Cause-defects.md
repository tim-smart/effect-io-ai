Package: `effect`<br />
Module: `Cause`<br />

## Cause.defects

Extracts all unrecoverable defects from a `Cause`.

**Details**

This function returns a chunk of values representing unexpected errors
(`Die`). It's handy for capturing or logging unanticipated failures that
might need special handling, such as bug reports.

**Signature**

```ts
declare const defects: <E>(self: Cause<E>) => Chunk.Chunk<unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L832)

Since v2.0.0