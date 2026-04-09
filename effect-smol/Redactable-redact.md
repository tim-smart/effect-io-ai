Package: `effect`<br />
Module: `Redactable`<br />

## Redactable.redact

Redacts a value if it implements `Redactable`, otherwise returns it
unchanged.

- Use this as the general-purpose entry point for redaction: it is safe to
  call on any value.
- Internally calls `isRedactable` and, if `true`, delegates to
  `getRedacted`.
- Not recursive: nested redactable values inside the returned object are not
  automatically redacted.
- Pure with respect to its argument (does not mutate the input).

See also:
- `isRedactable` - check before redacting
- `getRedacted` - lower-level variant for known redactables

**Signature**

```ts
declare const redact: (u: unknown) => unknown
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Redactable.ts#L172)

Since v4.0.0