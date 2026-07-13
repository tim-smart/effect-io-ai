Package: `effect`<br />
Module: `Schema`<br />

## Schema.optional

Type-level representation returned by `optional`.

**Signature**

```ts
export interface optional<S extends Constraint> extends optionalKey<UndefinedOr<S>> {
  readonly "Rebuild": optional<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2348)

Since v3.10.0