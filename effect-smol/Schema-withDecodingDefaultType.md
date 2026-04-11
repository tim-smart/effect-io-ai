Package: `effect`<br />
Module: `Schema`<br />

## Schema.withDecodingDefaultType

The type produced by `withDecodingDefaultType`: a schema whose
`Encoded` side is `optional` and that fills in a default `Type` value during
decoding.

**See**

- `withDecodingDefaultType` for the constructor

**Signature**

```ts
export interface withDecodingDefaultType<S extends Top> extends decodeTo<withDecodingDefault<toType<S>>, optional<S>> {
  readonly "Rebuild": withDecodingDefaultType<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4480)

Since v4.0.0