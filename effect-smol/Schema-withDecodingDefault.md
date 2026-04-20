Package: `effect`<br />
Module: `Schema`<br />

## Schema.withDecodingDefault

The type produced by `withDecodingDefault`: a schema whose `Encoded`
side is `optional` and that fills in a default `Encoded` value during decoding.

**See**

- `withDecodingDefault` for the constructor

**Signature**

```ts
export interface withDecodingDefault<S extends Top> extends decodeTo<S, optional<toEncoded<S>>> {
  readonly "Rebuild": withDecodingDefault<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4423)

Since v4.0.0