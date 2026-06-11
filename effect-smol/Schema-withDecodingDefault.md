Package: `effect`<br />
Module: `Schema`<br />

## Schema.withDecodingDefault

Type-level representation returned by `withDecodingDefault`.

**Signature**

```ts
export interface withDecodingDefault<S extends Top, R = never> extends decodeTo<S, optional<toEncoded<S>>, R> {
  readonly "Rebuild": withDecodingDefault<S, R>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5385)

Since v3.10.0