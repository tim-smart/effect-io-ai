Package: `effect`<br />
Module: `Schema`<br />

## Schema.Defect

Type-level representation of the `Defect` schema, which accepts JavaScript
`Error` values and arbitrary unknown defect values.

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
{
  readonly "Rebuild": Defect
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8194)

Since v4.0.0