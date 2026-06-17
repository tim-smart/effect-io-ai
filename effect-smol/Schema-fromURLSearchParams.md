Package: `effect`<br />
Module: `Schema`<br />

## Schema.fromURLSearchParams

Type-level representation returned by `fromURLSearchParams`.

**Signature**

```ts
export interface fromURLSearchParams<S extends Top> extends decodeTo<S, URLSearchParams> {
  readonly "Rebuild": fromURLSearchParams<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11045)

Since v4.0.0