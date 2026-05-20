Package: `effect`<br />
Module: `ErrorReporter`<br />

## ErrorReporter.Reportable

Interface that object errors can implement to control reporting behavior.

**Details**

All three annotation properties are optional: `[ErrorReporter.ignore]`
prevents reporting when set to `true`, `[ErrorReporter.severity]` overrides
the default `"Info"` severity, and `[ErrorReporter.attributes]` adds extra
key/value pairs forwarded to reporters. The global `Error` interface is
augmented with `Reportable`, so these properties are available on `Error`
instances at the type level.

**Signature**

```ts
export interface Reportable {
  readonly [ignore]?: boolean
  readonly [severity]?: Severity
  readonly [attributes]?: ReadonlyRecord<string, unknown>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ErrorReporter.ts#L299)

Since v4.0.0