Package: `effect`<br />
Module: `TPubSub`<br />

## TPubSub.size

Retrieves the size of the `TPubSub`, which is equal to the number of elements
in the `TPubSub`. This may be negative if fibers are suspended waiting for
elements to be added to the `TPubSub`.

**Signature**

```ts
declare const size: <A>(self: TPubSub<A>) => STM.STM<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TPubSub.ts#L159)

Since v2.0.0