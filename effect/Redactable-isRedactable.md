Package: `effect`<br />
Module: `Redactable`<br />

## Redactable.isRedactable

Type guard that checks whether a value implements the `Redactable`
interface.

**When to use**

Use to narrow an unknown value before calling redaction-specific helpers.

**See**

- `Redactable` for the interface being checked
- `redact` to apply redaction if the value is redactable

**Signature**

```ts
declare const isRedactable: (u: unknown) => u is Redactable
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Redactable.ts#L101)

Since v3.10.0