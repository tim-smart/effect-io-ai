Package: `effect`<br />
Module: `ErrorReporter`<br />

## ErrorReporter.getSeverity

Reads the `ErrorReporter.severity` annotation from an error object,
falling back to `"Error"` when unset or invalid.

**Signature**

```ts
declare const getSeverity: (error: object) => Severity
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ErrorReporter.ts#L389)

Since v4.0.0