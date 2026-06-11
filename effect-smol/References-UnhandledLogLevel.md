Package: `effect`<br />
Module: `References`<br />

## References.UnhandledLogLevel

Context reference for the log severity used when a pool finalizer reports an
unhandled error.

**When to use**

Use to choose whether and at which severity pool finalizer failures are
reported.

**Details**

The default level is `"Error"`.

**Gotchas**

Providing `undefined` suppresses this report; it does not fall back to
`CurrentLogLevel`.

**See**

- `CurrentLogLevel` for the default severity used by ordinary `Effect.log` calls
- `MinimumLogLevel` for filtering emitted log entries by threshold

**Signature**

```ts
declare const UnhandledLogLevel: Context.Reference<Severity | undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/References.ts#L683)

Since v4.0.0