Package: `effect`<br />
Module: `Inspectable`<br />

## Inspectable.toJson

Safely converts a value to a JSON-serializable representation.

**When to use**

Use when you need a safe, JSON-serializable representation of a value
without risking unhandled errors.

**Details**

This function attempts to extract JSON data from objects that implement the
`toJSON` method, recursively processes arrays, and handles errors gracefully.
For objects that don't have a `toJSON` method, it applies redaction to
protect sensitive information.

**See**

- `toStringUnknown` for converting unknown values to strings

**Signature**

```ts
declare const toJson: (input: unknown) => unknown
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Inspectable.ts#L206)

Since v4.0.0