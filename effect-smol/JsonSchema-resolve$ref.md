Package: `effect`<br />
Module: `JsonSchema`<br />

## JsonSchema.resolve$ref

Resolves a `$ref` string by looking up the last path segment in a
definitions map.

- Use when you need to dereference a `$ref` pointer to get the
  actual schema it points to.
- Only resolves the final segment of the ref path (e.g. `"User"` from
  `"#/$defs/User"`); does not follow arbitrary JSON Pointer paths.
- Returns `undefined` if the definition is not found.
- Does not mutate anything. Pure function.

**Example** (Resolving a $ref)

```ts
import { JsonSchema } from "effect"

const definitions: JsonSchema.Definitions = {
  User: { type: "object", properties: { name: { type: "string" } } }
}

const result = JsonSchema.resolve$ref("#/$defs/User", definitions)
console.log(result) // { type: "object", properties: { name: { type: "string" } } }

const missing = JsonSchema.resolve$ref("#/$defs/Unknown", definitions)
console.log(missing) // undefined
```

**See**

- `resolveTopLevel$ref`
- `Definitions`

**Signature**

```ts
declare const resolve$ref: ($ref: string, definitions: Definitions) => JsonSchema | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonSchema.ts#L858)

Since v4.0.0