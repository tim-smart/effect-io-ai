Package: `effect`<br />
Module: `Schema`<br />

## Schema.Record.Key

Constraint for schemas that can be used as record keys.

**Details**

The key schema must decode and encode property keys (`string`, `number`, or
`symbol`) so it can describe object property names.

**Signature**

```ts
export interface Key extends Codec<PropertyKey, PropertyKey, unknown, unknown> {
    readonly "~type.make": PropertyKey
    readonly "Iso": PropertyKey
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3671)

Since v4.0.0