Package: `effect`<br />
Module: `Schema`<br />

## Schema.fromJsonString

Type-level representation returned by `fromJsonString`.

**Signature**

```ts
export interface fromJsonString<S extends Constraint> extends decodeTo<S, String> {
  readonly "Rebuild": fromJsonString<S>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L11013)

Since v4.0.0