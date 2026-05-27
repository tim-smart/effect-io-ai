Package: `effect`<br />
Module: `Statement`<br />

## Statement.custom

Creates a constructor for custom SQL segments of a specific kind handled by
the active compiler.

**Signature**

```ts
declare const custom: <C extends Custom<any, any, any, any>>(kind: C["kind"]) => (paramA: C["paramA"], paramB: C["paramB"], paramC: C["paramC"]) => C
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Statement.ts#L408)

Since v4.0.0