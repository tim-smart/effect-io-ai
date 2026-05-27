Package: `effect`<br />
Module: `Schema`<br />

## Schema.UnknownFromJsonString

Type-level representation of a transformation schema that decodes
JSON-encoded strings into `unknown` values.

**Signature**

```ts
export interface UnknownFromJsonString extends fromJsonString<Unknown> {
  readonly "Rebuild": UnknownFromJsonString
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10129)

Since v4.0.0