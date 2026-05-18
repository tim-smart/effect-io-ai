Package: `effect`<br />
Module: `Cookies`<br />

## Cookies.schemaRecord

Schema transformation between `Cookies` and a record of decoded string values keyed by cookie name.

**Signature**

```ts
declare const schemaRecord: Schema.decodeTo<Schema.$Record<Schema.String, Schema.String>, CookiesSchema, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cookies.ts#L869)

Since v4.0.0