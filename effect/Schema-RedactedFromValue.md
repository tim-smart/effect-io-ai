Package: `effect`<br />
Module: `Schema`<br />

## Schema.RedactedFromValue

Type-level representation returned by `RedactedFromValue`.

**Signature**

```ts
export interface RedactedFromValue<S extends Constraint>
  extends decodeTo<Redacted<toType<S>>, middlewareDecoding<S, S["DecodingServices"]>>
{
  readonly "Rebuild": RedactedFromValue<S>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L9060)

Since v4.0.0