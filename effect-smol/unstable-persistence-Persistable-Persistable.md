Package: `effect`<br />
Module: `Persistable`<br />

## Persistable.Persistable

A primary-keyed request value whose success and error results can be
serialized for persistence.

**Signature**

```ts
export interface Persistable<A extends Schema.Constraint, E extends Schema.Constraint> extends PrimaryKey.PrimaryKey {
  readonly [symbol]: {
    readonly success: A
    readonly error: E
  }
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Persistable.ts#L40)

Since v4.0.0