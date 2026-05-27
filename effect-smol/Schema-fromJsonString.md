Package: `effect`<br />
Module: `Schema`<br />

## Schema.fromJsonString

Type-level representation of a schema that parses a JSON string and then
decodes the parsed value with the provided schema.

**Signature**

```ts
export interface fromJsonString<S extends Top> extends decodeTo<S, String> {
  readonly "Rebuild": fromJsonString<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10167)

Since v4.0.0