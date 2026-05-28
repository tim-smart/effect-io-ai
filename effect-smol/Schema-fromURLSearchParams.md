Package: `effect`<br />
Module: `Schema`<br />

## Schema.fromURLSearchParams

Type-level representation of a schema that parses `URLSearchParams` into a
tree record and then decodes it with the provided schema.

**Signature**

```ts
export interface fromURLSearchParams<S extends Top> extends decodeTo<S, URLSearchParams> {
  readonly "Rebuild": fromURLSearchParams<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10760)

Since v4.0.0