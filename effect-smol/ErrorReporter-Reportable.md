Package: `effect`<br />
Module: `ErrorReporter`<br />

## ErrorReporter.Reportable

Interface that errors can implement to control reporting behavior.

All three annotation properties are optional:
- `[ErrorReporter.ignore]` — when `true`, the error is never reported
- `[ErrorReporter.severity]` — overrides the default `"Error"` severity
- `[ErrorReporter.attributes]` — extra key/value pairs forwarded to reporters

The global `Error` interface is augmented with `Reportable`, so these
properties are available on all `Error` instances.

**Signature**

```ts
export interface Reportable {
  readonly [ignore]?: boolean
  readonly [severity]?: Severity
  readonly [attributes]?: ReadonlyRecord<string, unknown>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ErrorReporter.ts#L280)

Since v4.0.0