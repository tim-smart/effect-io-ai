Package: `effect`<br />
Module: `Schema`<br />

## Schema.StringFromUriComponent

Schema interface for `StringFromUriComponent`, a transformation between
URI-component encoded strings and UTF-8 strings.

**Signature**

```ts
export interface StringFromUriComponent extends decodeTo<String, String> {
  readonly "Rebuild": StringFromUriComponent
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11139)

Since v3.12.0