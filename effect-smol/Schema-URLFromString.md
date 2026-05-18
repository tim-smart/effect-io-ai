Package: `effect`<br />
Module: `Schema`<br />

## Schema.URLFromString

Type-level representation of a transformation schema that decodes valid URL
strings into JavaScript `URL` instances.

**Signature**

```ts
export interface URLFromString extends decodeTo<URL, String> {
  readonly "Rebuild": URLFromString
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L9015)

Since v4.0.0