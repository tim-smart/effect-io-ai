Package: `effect`<br />
Module: `Schema`<br />

## Schema.ArrayEnsure

Type-level representation returned by `ArrayEnsure`.

**Signature**

```ts
export interface ArrayEnsure<S extends Constraint> extends decodeTo<$Array<toType<S>>, Union<readonly [S, $Array<S>]>> {
  readonly "Rebuild": ArrayEnsure<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4537)

Since v3.10.0