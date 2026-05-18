Package: `effect`<br />
Module: `Schema`<br />

## Schema.NonEmptyString

Type-level representation of the `NonEmptyString` schema, which validates
strings with a length of at least one.

**Signature**

```ts
export interface NonEmptyString extends String {
  readonly "Rebuild": NonEmptyString
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7235)

Since v4.0.0