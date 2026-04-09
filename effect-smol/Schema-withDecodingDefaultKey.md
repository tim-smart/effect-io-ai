Package: `effect`<br />
Module: `Schema`<br />

## Schema.withDecodingDefaultKey

The type produced by `withDecodingDefaultKey` — a schema that decodes from an `optionalKey` encoded source.

**See**

- `withDecodingDefaultKey` for the constructor

**Signature**

```ts
export interface withDecodingDefaultKey<S extends Top> extends decodeTo<S, optionalKey<toEncoded<S>>> {
  readonly "~rebuild.out": withDecodingDefaultKey<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4278)

Since v4.0.0