Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.DateTime.Proto

Shared protocol implemented by all `DateTime` values.

Provides the `DateTime` type identifier along with pipe and inspection
support.

**Signature**

```ts
export interface Proto extends Pipeable, Inspectable {
    readonly [TypeId]: typeof TypeId
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L283)

Since v3.6.0