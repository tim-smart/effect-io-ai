Package: `effect`<br />
Module: `Redactable`<br />

## Redactable.isRedactable

Type guard that checks whether a value implements the `Redactable`
interface.

See also:
- `Redactable` - the interface being checked
- `redact` - applies redaction if the value is redactable

**Signature**

```ts
declare const isRedactable: (u: unknown) => u is Redactable
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Redactable.ts#L152)

Since v4.0.0