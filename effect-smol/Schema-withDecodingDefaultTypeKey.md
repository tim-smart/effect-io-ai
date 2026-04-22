Package: `effect`<br />
Module: `Schema`<br />

## Schema.withDecodingDefaultTypeKey

The type produced by `withDecodingDefaultTypeKey`: a schema whose
`Encoded` side is `optionalKey` and that fills in a default `Type` value
during decoding.

**See**

- `withDecodingDefaultTypeKey` for the constructor

**Signature**

```ts
export interface withDecodingDefaultTypeKey<S extends Top>
  extends decodeTo<withDecodingDefaultKey<toType<S>>, optionalKey<S>>
{
  readonly "Rebuild": withDecodingDefaultTypeKey<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4385)

Since v4.0.0