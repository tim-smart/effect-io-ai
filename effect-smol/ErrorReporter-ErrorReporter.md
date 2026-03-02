Package: `effect`<br />
Module: `ErrorReporter`<br />

## ErrorReporter.ErrorReporter

An `ErrorReporter` receives reported failures and forwards them to an
external system (logging service, error tracker, etc.).

Reporting is triggered by `Effect.withErrorReporting`,
`ErrorReporter.report`, or built-in boundaries in the HTTP and RPC server
modules. Use `make` to create a reporter — it handles deduplication
and per-error annotation extraction automatically.

**Signature**

```ts
export interface ErrorReporter {
  readonly [TypeId]: TypeId
  report(options: {
    readonly cause: Cause.Cause<unknown>
    readonly fiber: Fiber.Fiber<unknown, unknown>
    readonly timestamp: bigint
  }): void
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ErrorReporter.ts#L86)

Since v4.0.0