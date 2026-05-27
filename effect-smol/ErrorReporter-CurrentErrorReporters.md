Package: `effect`<br />
Module: `ErrorReporter`<br />

## ErrorReporter.CurrentErrorReporters

A `Context.Reference` holding the set of active `ErrorReporter`s for the
current fiber. Defaults to an empty set (no reporting).

**When to use**

Use when low-level code needs to read or replace the current set of reporters
directly.

**Signature**

```ts
declare const CurrentErrorReporters: Context.Reference<ReadonlySet<ErrorReporter>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ErrorReporter.ts#L206)

Since v4.0.0