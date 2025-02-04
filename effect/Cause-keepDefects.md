# keepDefects

Removes all `Fail` and `Interrupt` nodes, keeping only defects (`Die`) in a
`Cause`.

**Details**

This function strips a cause of recoverable errors and interruptions, leaving
only unexpected failures. If no defects remain, it returns `None`. It's
valuable for focusing only on unanticipated problems when both known errors
and defects could occur.

To import and use `keepDefects` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.keepDefects
```

**Signature**

```ts
export declare const keepDefects: <E>(self: Cause<E>) => Option.Option<Cause<never>>
```
