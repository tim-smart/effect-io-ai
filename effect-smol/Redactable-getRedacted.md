Package: `effect`<br />
Module: `Redactable`<br />

## Redactable.getRedacted

Calls `[symbolRedactable]` on a value that is already known to be
`Redactable` and returns the result.

- Use this when you have already verified the value is `Redactable` (e.g.,
  via `isRedactable`) and want to avoid a second check.
- Reads the current fiber's `Context` from the global fiber reference. If
  no fiber is active, an empty `Context` is passed to the redaction
  method.
- Does not mutate the input.

See also:
- `redact` - higher-level variant that handles non-redactable values
- `isRedactable` - type guard to verify before calling this

**Signature**

```ts
declare const getRedacted: (redactable: Redactable) => unknown
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Redactable.ts#L194)

Since v4.0.0