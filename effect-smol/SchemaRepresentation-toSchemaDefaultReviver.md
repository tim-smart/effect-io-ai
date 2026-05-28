Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.toSchemaDefaultReviver

Default `Reviver` for `toSchema` that handles built-in Effect
types, including Option, Result, Redacted, Cause, Exit, ReadonlyMap, HashMap,
ReadonlySet, Date, Duration, URL, and RegExp.

**When to use**

Use when passing this as `options.reviver` to `toSchema` to reconstruct
schemas that use these types.

**Details**

The reviver returns `undefined` for unrecognized declarations, causing
fallback to `encodedSchema`.

**See**

- `toSchema`
- `Reviver`

**Signature**

```ts
declare const toSchemaDefaultReviver: Reviver<Schema.Top>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1818)

Since v4.0.0