Package: `effect`<br />
Module: `Schema`<br />

## Schema.DateFromString

Type-level representation of a transformation schema that decodes strings into
JavaScript `Date` instances.

**Signature**

```ts
export interface DateFromString extends decodeTo<Date, String> {
  readonly "Rebuild": DateFromString
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L9778)

Since v3.10.0