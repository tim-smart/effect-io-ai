Package: `effect`<br />
Module: `Schema`<br />

## Schema.withDecodingDefault

The type produced by `withDecodingDefault` — a schema that decodes from an `optional` encoded source.

**See**

- `withDecodingDefault` for the constructor

**Signature**

```ts
export interface withDecodingDefault<S extends Top> extends decodeTo<S, optional<toEncoded<S>>> {
  readonly "~rebuild.out": withDecodingDefault<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4344)

Since v4.0.0