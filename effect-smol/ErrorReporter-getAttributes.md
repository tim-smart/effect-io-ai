Package: `effect`<br />
Module: `ErrorReporter`<br />

## ErrorReporter.getAttributes

Reads the `ErrorReporter.attributes` annotation from an error object,
returning an empty record when unset.

**When to use**

Use to inspect the attributes that reporter callbacks will receive for an
object error.

**Details**

Returns the value stored under `ErrorReporter.attributes`, or the module's
shared empty record when the annotation is absent.

**Gotchas**

The annotation value is returned as-is; this helper does not validate or
clone it.

**See**

- `attributes` for the annotation key used to attach metadata
- `Reportable` for the annotation properties recognized on object errors

**Signature**

```ts
declare const getAttributes: (error: object) => ReadonlyRecord<string, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ErrorReporter.ts#L578)

Since v4.0.0