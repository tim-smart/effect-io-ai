Package: `effect`<br />
Module: `Schema`<br />

## Schema.Union

Creates a schema that represents a union of multiple schemas. Members are checked in order, and the first match is returned.

Optionally, you can specify the `mode` to be `"anyOf"` or `"oneOf"`.

- `"anyOf"` - The union matches if any member matches.
- `"oneOf"` - The union matches if exactly one member matches.

**Signature**

```ts
declare const Union: <const Members extends ReadonlyArray<Top>>(members: Members, options?: { mode?: "anyOf" | "oneOf"; }) => Union<Members>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2461)

Since v4.0.0