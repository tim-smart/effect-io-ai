Package: `effect`<br />
Module: `Schema`<br />

## Schema.fromFormData

Type-level representation of a schema that parses `FormData` into a tree
record and then decodes it with the provided schema.

**Signature**

```ts
export interface fromFormData<S extends Top> extends decodeTo<S, FormData> {
  readonly "Rebuild": fromFormData<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10617)

Since v4.0.0