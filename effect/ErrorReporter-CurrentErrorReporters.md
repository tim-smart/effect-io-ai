Package: `effect`<br />
Module: `ErrorReporter`<br />

## ErrorReporter.CurrentErrorReporters

Context reference that holds the set of active error reporters for the
current fiber. Defaults to an empty set (no reporting).

**When to use**

Use when you need to read or replace the current set of error reporters
directly.

**Signature**

```ts
declare const CurrentErrorReporters: Context.Reference<ReadonlySet<ErrorReporter>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ErrorReporter.ts#L169)

Since v4.0.0