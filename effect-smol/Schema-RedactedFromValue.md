Package: `effect`<br />
Module: `Schema`<br />

## Schema.RedactedFromValue

Type-level representation of a schema that decodes a raw value with the
provided schema and wraps the result in `Redacted`.

**Signature**

```ts
export interface RedactedFromValue<S extends Top>
  extends decodeTo<Redacted<toType<S>>, middlewareDecoding<S, S["DecodingServices"]>>
{
  readonly "Rebuild": RedactedFromValue<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7821)

Since v4.0.0