Package: `effect`<br />
Module: `Schema`<br />

## Schema.fromURLSearchParams

Type-level representation returned by `fromURLSearchParams`.

**Signature**

```ts
export interface fromURLSearchParams<S extends Constraint> extends decodeTo<S, URLSearchParams> {
  readonly "Rebuild": fromURLSearchParams<S>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L11394)

Since v4.0.0