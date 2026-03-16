Package: `effect`<br />
Module: `Schema`<br />

## Schema.Defect

Schema type for `Defect`.

**Signature**

```ts
export interface Defect extends
  Union<
    readonly [
      decodeTo<
        Error,
        Struct<{
          readonly message: String
          readonly name: optionalKey<String>
          readonly stack: optionalKey<String>
        }>
      >,
      decodeTo<Unknown, Any>
    ]
  >
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7605)

Since v4.0.0