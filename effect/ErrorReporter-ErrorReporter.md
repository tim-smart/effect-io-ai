Package: `effect`<br />
Module: `ErrorReporter`<br />

## ErrorReporter.ErrorReporter

An `ErrorReporter` receives reported failures and forwards them to an
external system such as a logging service or error tracker.

**When to use**

Use as the interface for custom reporters that forward reported Effect
failures to logging, monitoring, or error-tracking systems.

**Details**

Reporting is triggered by `Effect.withErrorReporting`,
`ErrorReporter.report`, or built-in boundaries in the HTTP and RPC server
modules. Use `make` to create a reporter; it handles deduplication
and per-error annotation extraction automatically.

**See**

- `make` for creating an `ErrorReporter` from a callback
- `layer` for registering reporters in the environment
- `report` for manually reporting a `Cause`
- `Effect.withErrorReporting` for reporting failures from an effect

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ErrorReporter.ts#L76)

Since v4.0.0