Package: `effect`<br />
Module: `Schema`<br />

## Schema.Char

Type-level representation of the `Char` schema, which validates strings whose
length is exactly one.

**Signature**

```ts
export interface Char extends String {
  readonly "Rebuild": Char
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8035)

Since v3.10.0