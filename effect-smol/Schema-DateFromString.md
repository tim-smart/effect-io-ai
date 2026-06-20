Package: `effect`<br />
Module: `Schema`<br />

## Schema.DateFromString

Type-level representation of `DateFromString`.

**Signature**

```ts
export interface DateFromString extends decodeTo<Date, String> {
  readonly "Rebuild": DateFromString
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10229)

Since v3.10.0