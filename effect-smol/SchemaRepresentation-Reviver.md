Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Reviver

A callback that handles `Declaration` nodes during reconstruction
(`toSchema`) or code generation (`toCodeDocument`).

- Return a value to handle the declaration.
- Return `undefined` to fall back to default behavior (use `encodedSchema`
  for `toSchema`, or `generation` annotation for `toCodeDocument`).
- `recur` processes child representations recursively.

**See**

- `toSchema`
- `toSchemaDefaultReviver`
- `toCodeDocument`

**Signature**

```ts
type Reviver<T> = (declaration: Declaration, recur: (representation: Representation) => T) => T | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1697)

Since v4.0.0