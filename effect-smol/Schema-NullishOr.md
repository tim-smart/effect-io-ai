Package: `effect`<br />
Module: `Schema`<br />

## Schema.NullishOr

Type-level representation returned by `NullishOr`.

**Signature**

```ts
export interface NullishOr<S extends Constraint> extends Union<readonly [S, Null, Undefined]> {
  readonly "Rebuild": NullishOr<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4869)

Since v3.10.0