Package: `effect`<br />
Module: `ErrorReporter`<br />

## ErrorReporter.severity

String property key used to override the severity level of an object error.

**When to use**

Use to type the property key that overrides the reporting severity for object
errors.

**Details**

When set to a valid `LogLevel.Severity`, the reporter callback receives this
value as `severity`. Missing or invalid values fall back to `"Info"`.

**Signature**

```ts
type severity = "~effect/ErrorReporter/severity"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ErrorReporter.ts#L438)

Since v4.0.0