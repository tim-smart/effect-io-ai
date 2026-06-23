Package: `effect`<br />
Module: `Schema`<br />

## Schema.withDecodingDefaultTypeKey

Type-level representation returned by `withDecodingDefaultTypeKey`.

**Signature**

```ts
export interface withDecodingDefaultTypeKey<S extends Constraint, R = never>
  extends decodeTo<withDecodingDefaultKey<toType<S>, R>, optionalKey<S>>
{
  readonly "Rebuild": withDecodingDefaultTypeKey<S, R>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5717)

Since v4.0.0