## keepDefects

Removes all `Fail` and `Interrupt` nodes, keeping only defects (`Die`) in a
`Cause`.

**Details**

This function strips a cause of recoverable errors and interruptions, leaving
only unexpected failures. If no defects remain, it returns `None`. It's
valuable for focusing only on unanticipated problems when both known errors
and defects could occur.

**Signature**

```ts
declare const keepDefects: <E>(self: Cause<E>) => Option.Option<Cause<never>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L933)

Since v2.0.0