Package: `effect`<br />
Module: `Redactable`<br />

## Redactable.redact

Redacts a value if it implements `Redactable`, otherwise returns it
unchanged.

**When to use**

Use this as the general-purpose entry point for redaction when the input may
or may not implement the redaction protocol.

**Details**

This function calls `isRedactable` and, when it returns `true`,
delegates to `getRedacted`. It does not mutate the input.

**Gotchas**

Redaction is not recursive. Nested redactable values inside the returned
object are not automatically redacted.

**See**

- `isRedactable` - check before redacting
- `getRedacted` - lower-level variant for known redactables

**Signature**

```ts
declare const redact: (u: unknown) => unknown
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Redactable.ts#L181)

Since v3.10.0