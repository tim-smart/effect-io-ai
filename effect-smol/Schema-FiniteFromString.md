Package: `effect`<br />
Module: `Schema`<br />

## Schema.FiniteFromString

Type-level representation of a transformation schema that decodes strings into
finite numbers.

**Signature**

```ts
export interface FiniteFromString extends decodeTo<Finite, String> {
  readonly "Rebuild": FiniteFromString
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10403)

Since v4.0.0