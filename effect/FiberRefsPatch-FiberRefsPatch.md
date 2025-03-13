Package: `effect`<br />
Module: `FiberRefsPatch`<br />

## FiberRefsPatch.FiberRefsPatch

A `FiberRefsPatch` captures the changes in `FiberRef` values made by a single
fiber as a value. This allows fibers to apply the changes made by a workflow
without inheriting all the `FiberRef` values of the fiber that executed the
workflow.

**Signature**

```ts
type FiberRefsPatch = Empty | Add | Remove | Update | AndThen
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberRefsPatch.ts#L18)

Since v2.0.0