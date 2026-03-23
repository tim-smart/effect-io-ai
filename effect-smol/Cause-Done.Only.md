Package: `effect`<br />
Module: `Cause`<br />

## Cause.Done.Only

Filters a type union to only keep `Done` members.

**Signature**

```ts
type Only<E> = E extends Done<infer L> ? Done<L> : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1247)

Since v4.0.0