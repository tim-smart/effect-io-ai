Package: `effect`<br />
Module: `Schema`<br />

## Schema.withDecodingDefaultKey

Type-level representation returned by `withDecodingDefaultKey`.

**Signature**

```ts
export interface withDecodingDefaultKey<S extends Constraint, R = never>
  extends decodeTo<S, optionalKey<toEncoded<S>>, R>
{
  readonly "Rebuild": withDecodingDefaultKey<S, R>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L5716)

Since v4.0.0