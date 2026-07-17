Package: `effect`<br />
Module: `ErrorReporter`<br />

## ErrorReporter.getSeverity

Reads the `ErrorReporter.severity` annotation from an error object,
falling back to `"Info"` when the annotation is unset or invalid.

**When to use**

Use to inspect the severity that reporter callbacks will receive for an
object error.

**See**

- `severity` for the annotation key used to override severity
- `Reportable` for the annotation properties recognized on object errors

**Signature**

```ts
declare const getSeverity: (error: object) => Severity
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ErrorReporter.ts#L449)

Since v4.0.0