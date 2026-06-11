Package: `effect`<br />
Module: `Redactable`<br />

## Redactable.getRedacted

Returns the result of calling `[symbolRedactable]` on a value that is
already known to be `Redactable`.

**When to use**

Use when you need to read the redacted representation from a value already
verified as `Redactable`.

**Details**

This function reads the current fiber's `Context` from the global fiber
reference and passes it to the redaction method.

**Gotchas**

If no fiber is active, an empty `Context` is passed to the redaction method.

**See**

- `redact` for the higher-level variant that handles non-redactable values
- `isRedactable` for the type guard to verify before calling this

**Signature**

```ts
declare const getRedacted: (redactable: Redactable) => unknown
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Redactable.ts#L155)

Since v4.0.0