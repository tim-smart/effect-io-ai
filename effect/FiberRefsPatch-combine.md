Package: `effect`<br />
Module: `FiberRefsPatch`<br />

## FiberRefsPatch.combine

Combines this patch and the specified patch to create a new patch that
describes applying the changes from this patch and the specified patch
sequentially.

**Signature**

```ts
declare const combine: { (that: FiberRefsPatch): (self: FiberRefsPatch) => FiberRefsPatch; (self: FiberRefsPatch, that: FiberRefsPatch): FiberRefsPatch; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberRefsPatch.ts#L90)

Since v2.0.0