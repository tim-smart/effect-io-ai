Package: `effect`<br />
Module: `Schema`<br />

## Schema.withDecodingDefaultType

Type-level representation returned by `withDecodingDefaultType`.

**Signature**

```ts
export interface withDecodingDefaultType<S extends Constraint, R = never>
  extends decodeTo<withDecodingDefault<toType<S>, R>, optional<S>>
{
  readonly "Rebuild": withDecodingDefaultType<S, R>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5825)

Since v4.0.0