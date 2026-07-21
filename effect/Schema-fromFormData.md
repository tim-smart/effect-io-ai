Package: `effect`<br />
Module: `Schema`<br />

## Schema.fromFormData

Type-level representation returned by `fromFormData`.

**Signature**

```ts
export interface fromFormData<S extends Constraint> extends decodeTo<S, FormData> {
  readonly "Rebuild": fromFormData<S>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L11256)

Since v4.0.0