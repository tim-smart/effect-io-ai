Package: `effect`<br />
Module: `Cause`<br />

## Cause.squash

Extracts the most "important" defect from a `Cause`.

**Details**

This function reduces a `Cause` to a single, prioritized defect. It evaluates
the `Cause` in the following order of priority:

1. If the `Cause` contains a failure (e.g., from `Effect.fail`), it returns
   the raw error value.
2. If there is no failure, it looks for the first defect (e.g., from
   `Effect.die`).
3. If neither of the above is present, and the `Cause` stems from an
   interruption, it creates and returns an `InterruptedException`.

This function ensures you can always extract a meaningful representation of
the primary issue from a potentially complex `Cause` structure.

**When to Use**

Use this function when you need to extract the most relevant error or defect
from a `Cause`, especially in scenarios where multiple errors or defects may
be present. It's particularly useful for simplifying error reporting or
logging.

**See**

- `squashWith` Allows transforming failures into defects when squashing.

**Signature**

```ts
declare const squash: <E>(self: Cause<E>) => unknown
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L1119)

Since v2.0.0