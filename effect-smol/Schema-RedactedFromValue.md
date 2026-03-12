Package: `effect`<br />
Module: `Schema`<br />

## Schema.RedactedFromValue

Schema type for `RedactedFromValue`.

**Signature**

```ts
export interface RedactedFromValue<S extends Top>
  extends decodeTo<Redacted<toType<S>>, middlewareDecoding<S, S["DecodingServices"]>>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7214)

Since v4.0.0