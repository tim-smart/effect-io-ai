Package: `effect`<br />
Module: `Schema`<br />

## Schema.withDecodingDefaultKey

The type produced by `withDecodingDefaultKey`: a schema whose `Encoded`
side is `optionalKey` and that fills in a default `Encoded` value during decoding.

**See**

- `withDecodingDefaultKey` for the constructor

**Signature**

```ts
export interface withDecodingDefaultKey<S extends Top, R = never> extends decodeTo<S, optionalKey<toEncoded<S>>, R> {
  readonly "Rebuild": withDecodingDefaultKey<S, R>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4617)

Since v4.0.0