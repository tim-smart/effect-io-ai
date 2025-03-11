## squashWith

Extracts the most "important" defect from a `Cause`, transforming failures
into defects using a provided function.

**Details**

This function reduces a `Cause` to a single, prioritized defect, while
allowing you to transform recoverable failures into defects through a custom
function. It processes the `Cause` in the following order:

1. If the `Cause` contains a failure (e.g., from `Effect.fail`), it applies
   the provided function `f` to the error to transform it into a defect.
2. If there is no failure, it looks for the first defect (e.g., from
   `Effect.die`) and returns it.
3. If neither is present and the `Cause` stems from an interruption, it
   returns an `InterruptedException`.

This function is particularly useful when you need custom handling or
transformation of errors while processing a `Cause`.

**See**

- `squash` Extracts the most "important" defect without transforming failures.

**Signature**

```ts
declare const squashWith: { <E>(f: (error: E) => unknown): (self: Cause<E>) => unknown; <E>(self: Cause<E>, f: (error: E) => unknown): unknown; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L1145)

Since v2.0.0