Package: `effect`<br />
Module: `Schema`<br />

## Schema.NumberFromString

Type-level representation of a transformation schema that decodes strings into
numbers using JavaScript number coercion.

**Signature**

```ts
export interface NumberFromString extends decodeTo<Finite, String> {
  readonly "Rebuild": NumberFromString
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10893)

Since v3.10.0