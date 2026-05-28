Package: `effect`<br />
Module: `Schema`<br />

## Schema.fromJsonString

Type-level representation returned by `fromJsonString`.

**Signature**

```ts
export interface fromJsonString<S extends Top> extends decodeTo<S, String> {
  readonly "Rebuild": fromJsonString<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10151)

Since v4.0.0