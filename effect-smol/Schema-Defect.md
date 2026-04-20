Package: `effect`<br />
Module: `Schema`<br />

## Schema.Defect

Companion type for `Defect`.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7868)

Since v4.0.0