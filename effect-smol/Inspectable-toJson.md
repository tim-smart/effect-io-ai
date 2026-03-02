Package: `effect`<br />
Module: `Inspectable`<br />

## Inspectable.toJson

Safely converts a value to a JSON-serializable representation, useful for
implementing the `toJSON` method of the `Inspectable` interface.

This function attempts to extract JSON data from objects that implement the
`toJSON` method, recursively processes arrays, and handles errors gracefully.
For objects that don't have a `toJSON` method, it applies redaction to
protect sensitive information.

**Signature**

```ts
declare const toJson: (input: unknown) => unknown
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Inspectable.ts#L154)

Since v2.0.0