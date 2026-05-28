Package: `effect`<br />
Module: `Schema`<br />

## Schema.ErrorWithStack

Schema for JavaScript `Error` objects that preserves stack traces in the JSON
encoded form.

**Details**

Default JSON serializer:
Encodes an `Error` as an object with `message`, optional `name`, and optional
`stack` properties, and decodes that object back into an `Error`.

**Signature**

```ts
declare const ErrorWithStack: Error
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L9044)

Since v4.0.0