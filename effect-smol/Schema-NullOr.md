Package: `effect`<br />
Module: `Schema`<br />

## Schema.NullOr

Type-level representation returned by `NullOr`.

**Signature**

```ts
export interface NullOr<S extends Constraint> extends Union<readonly [S, Null]> {
  readonly "Rebuild": NullOr<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4808)

Since v3.10.0