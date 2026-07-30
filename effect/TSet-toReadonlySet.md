Package: `effect`<br />
Module: `TSet`<br />

## TSet.toReadonlySet

Collects all elements into a `ReadonlySet`.

**Signature**

```ts
declare const toReadonlySet: <A>(self: TSet<A>) => STM.STM<ReadonlySet<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TSet.ts#L331)

Since v2.0.0